import os
import subprocess
import binascii
import struct
import shutil
import sys
import MySQLdb
import time
base_addr=0
high_addr=0
mysql_server_ip='172.16.155.1' #mac vmnet ip
#/home/l/bap/pin/pin -t /home/l/bap/pintraces/obj-ia32/gentrace.so -taint-offsets 0x1 -taint-offsets 6 -o 1-1 -log-limit 10000 -ins-limit 1000000 -c "mywps"  -taint-files 1.txt -- /home/l/bap/mywps/mywps /home/l/bap/mywps/1.txt
def run_pin_cmd(old_sample_num,offset1,offset2_len,coverage,elfpath,ext_command,suffix_name):
    
    #filename = filepath.split("/")[-1]
    pin_cmd = "/home/l/bap/pin/pin -t /home/l/bap/pintraces/obj-ia32/gentrace.so  -taint-offsets "+str(offset1)+" -taint-offsets "+str(offset2_len)+"  -o "+ str(old_sample_num)+" -log-limit 10000 -ins-limit 1000000  -c "+coverage+" -taint-files "+str(old_sample_num)+suffix_name+" --  "+elfpath+" "+ext_command+" "+str(old_sample_num)+suffix_name
    print "[*] pin cmd: ", pin_cmd
    os.system(pin_cmd)
#streamtrans -tracestream ./1-1-trace.bpt -trace-concrete -pp-ast x.il
def lift_il(old_sample_num):#int
    lift_il_cmd="streamtrans -tracestream "+str(old_sample_num)+"-trace.bpt"+" -trace-concrete -pp-ast "+str(old_sample_num)+"-1.il"
    print "[*] lift il cmd: ", lift_il_cmd
    os.system(lift_il_cmd)
    #deal_il x.il xx.il
    deal_il_cmd="deal_il "+str(old_sample_num)+"-1.il "+str(old_sample_num)+"-2.il"
    os.system(deal_il_cmd)
    #iltrans -il xx.il -replace-unknowns -uniqueify-labels -pp-ast x_1.il
    iltrans_cmd="iltrans -il "+str(old_sample_num)+"-2.il -replace-unknowns -uniqueify-labels -pp-ast "+str(old_sample_num)+"-3.il"
    print "[*] iltrans il cmd: ", iltrans_cmd
    os.system(iltrans_cmd)

def convert_path(old_sample_num,convert_addr,convert_serial_num):#int
    #give the convert address(int)
    print "[*] convert_path addr: ", hex(convert_addr)
    #convert_addr=base_addr+convert_addr
    f_il=open(str(old_sample_num)+'-3.il','r')
    file_lines=f_il.readlines()
    f_il.close()
    file_line_num=0
    find_convert_line=0
    tmp_serial_num=0
    for line in file_lines:
        if (line.find("label pc_0x")!=-1 ):
            line_pos=line.find("label pc_0x")+len("label pc_0x")
            if(len(line)<=19):
                myaddr=int(line[line_pos:],16) # absolute address
            else:
                myaddr=int(line[line.find('_',0)+1:line.find('_',18)],16)
            #print 'myaddr %x'%myaddr
            #print 'convert_addr %x'%convert_addr
            if(myaddr==convert_addr):
                print 'find'
                tmp_serial_num=tmp_serial_num+1
            if(tmp_serial_num==convert_serial_num):
                convert_line=file_lines[file_line_num+1]
                if(convert_line.find('assert')!=-1):
                    file_lines[file_line_num+1]='assert ~('+convert_line[7:-1]+')'+'\n'
                    find_convert_line=1
                    print 'find convert line',str(file_line_num)
                    break # now only the first
                else:
                    print 'error assert'
                    exit()   
        file_line_num=file_line_num+1
    if(find_convert_line==1):
        f_il_c=open(str(old_sample_num)+'-4'+hex(convert_addr)+'.il','w')
        tmp_line_num=0
        for line in file_lines:
            if(tmp_line_num<=file_line_num+1):
                f_il_c.write(line)
            else:
                break
            tmp_line_num=tmp_line_num+1
        f_il_c.close()
    else:
        print 'convert fail'
        exit()
def il_f(old_sample_num,convert_addr):
    il_f_cmd='topredicate -il '+str(old_sample_num)+'-4'+hex(convert_addr)+'.il'+' -q -noopt -stp-out '+str(old_sample_num)+'-4'+hex(convert_addr)+'.f' 
    print "[*] il_f  cmd: ", il_f_cmd   
    os.system(il_f_cmd)
def stp_solve(old_sample_num,convert_addr):
    stp_cmd='stp '+str(old_sample_num)+'-4'+hex(convert_addr)+'.f'+' > '+str(old_sample_num)+'-4'+hex(convert_addr)+'.s'
    print "[*] stp  cmd: ", stp_cmd
    os.system(stp_cmd)
    my_s=str(old_sample_num)+'-4'+hex(convert_addr)+'.s'
    my_s_file=open(my_s,'r')
    first_line=my_s_file.readline()
    my_s_file.close()
    if(first_line=='Valid.\n'):
        return 0
    else:
        return 1
def make_sample(old_sample_num,new_sample_num,suffix_name,convert_addr): #int int string
    make_sample_cmd='makenewsample  '+str(old_sample_num)+'-4'+hex(convert_addr)+'.s '+str(old_sample_num)+'-assist.txt '+ str(old_sample_num)+suffix_name+' '+str(new_sample_num)+suffix_name
    print "[*] make_sample  cmd: ", make_sample_cmd
    os.system(make_sample_cmd)
def get_task():
    db = MySQLdb.connect(mysql_server_ip,"root","123456","bap" )
    cursor = db.cursor()
    sql_cmd='select * from task where done=0;'
    cursor.execute(sql_cmd)
    data = cursor.fetchone()
    print data
    #print type(data)
    db.close()
    return data
def get_sample_num():#return sample_num
    db = MySQLdb.connect(mysql_server_ip,"root","123456","bap" )
    cursor = db.cursor()
    sql_cmd='select sample_num from sample where status=0 order by sample_num;'
    cursor.execute(sql_cmd)
    data = cursor.fetchone()
    db.close()
    return data
def set_sample_status(sample_num):
    db = MySQLdb.connect(mysql_server_ip,"root","123456","bap" )
    cursor = db.cursor()
    #update sample table
    sql_cmd='update sample set status=1 where sample_num=%d' %(sample_num)
    cursor.execute(sql_cmd)
    db.commit()
    db.close()
def get_task_data():#return sample_num
    db = MySQLdb.connect(mysql_server_ip,"root","123456","bap" )
    cursor = db.cursor()
    sql_cmd='select old_sample_num,new_sample_num,convert_address,convert_serial_num from task where status=0 order by convert_address;'
    cursor.execute(sql_cmd)
    data = cursor.fetchone()
    db.close()
    #print data
    #print type(data)
    return data
   
def set_task_status_1(old_sample_num,new_sample_num,convert_addr,convert_serial_num):
    db = MySQLdb.connect(mysql_server_ip,"root","123456","bap" )
    cursor = db.cursor()
    sql_cmd='update task set status=1 where old_sample_num=%d and new_sample_num=%d  and convert_address=%d and convert_serial_num=%d;' %(old_sample_num,new_sample_num,convert_addr,convert_serial_num)
    #print sql_cmd
    cursor.execute(sql_cmd)
    db.commit()
    db.close()
#occupy status
def set_task_status_3(old_sample_num,new_sample_num,convert_addr,convert_serial_num):
    db = MySQLdb.connect(mysql_server_ip,"root","123456","bap" )
    cursor = db.cursor()
    sql_cmd='update task set status=3 where old_sample_num=%d and new_sample_num=%d and convert_address=%d and convert_serial_num=%d;' %(old_sample_num,new_sample_num,convert_addr,convert_serial_num)
    #print sql_cmd
    cursor.execute(sql_cmd)
    db.commit()
    db.close()
#failure status
def set_task_status_2(old_sample_num,new_sample_num,convert_addr,convert_serial_num):
    db = MySQLdb.connect(mysql_server_ip,"root","123456","bap" )
    cursor = db.cursor()
    sql_cmd='update task set status=2 where old_sample_num=%d and new_sample_num=%d and convert_address=%d and convert_serial_num=%d;' %(old_sample_num,new_sample_num,convert_addr,convert_serial_num)
    #print sql_cmd
    cursor.execute(sql_cmd)
    db.commit()
    db.close()
    
def cp_share_folder(old_sample_num):
    os.system('cp %d-addrs.txt /mnt/hgfs/ubuntu14-disk/share/'%old_sample_num)
    os.system('cp %d-addrs1.txt /mnt/hgfs/ubuntu14-disk/share/'%old_sample_num)

def get_base_addr(old_sample_num):
    filename1='%d-addrs.txt'%old_sample_num
    ff=open(filename1,'r')
    line = ff.readline()
    base_addr=int(line.split()[0],16)
    high_addr=int(line.split()[1],16)
    ff.close()
    return base_addr,high_addr
def get_taint_branch(old_sample_num,base_addr,high_addr):
    taint_branch=set()
    f_il=open(str(old_sample_num)+'-3.il','r')
    file_lines=f_il.readlines()
    f_il.close()
    f_o=open('%d-addrs1.txt'%old_sample_num,'w')
    file_line_num=0
    for line in file_lines:
        if (line.find("assert ")!=-1 ) and (line.find("assert true")==-1):
            #print hex(base_addr),hex(high_addr)
            taint_addr_str=file_lines[file_line_num-1]          
            if(taint_addr_str.find('label pc_')!=-1):
                line_pos=taint_addr_str.find("label pc_0x")+len("label pc_0x")
                myaddr=int(taint_addr_str[line_pos:],16) # absolute address
                if(myaddr>base_addr and myaddr<high_addr):
                    #print hex(myaddr)
                    taint_branch.add(myaddr)
            else:
                print 'label error'
                exit()
        file_line_num=file_line_num+1
    taint_branch_list=list(taint_branch)
    taint_branch_list.sort()
    for addr in taint_branch_list:
        f_o.write(hex(addr)+'\n')
    f_o.close()
def insert_sample(sample_num):
    db = MySQLdb.connect(mysql_server_ip,"root","123456","bap" )
    cursor = db.cursor()
    sql_cmd='insert ignore into sample(sample_num,status) values('+str(sample_num)+','+str(0)+');'
    cursor.execute(sql_cmd)
    db.commit()
    db.close()
def bap_cmd_second(old_sample_num,new_sample_num,offset1,offset2_len,coverage,elfpath,ext_command,suffix_name,convert_addr,convert_serial_num):
    global base_addr,high_addr
    convert_path(old_sample_num,convert_addr,convert_serial_num)  #0804862C          
    il_f(old_sample_num,convert_addr)
    stp_success=stp_solve(old_sample_num,convert_addr)
    if(stp_success==1):
        make_sample(old_sample_num,new_sample_num,suffix_name,convert_addr)
        insert_sample(new_sample_num)
        return 1
    else:
        print "stp does not solve it."
        return 0
    
def bap_cmd_first(old_sample_num,offset1,offset2_len,coverage,elfpath,ext_command,suffix_name):
    global base_addr,high_addr
    run_pin_cmd(old_sample_num,offset1,offset2_len,coverage,elfpath,ext_command,suffix_name)
    base_addr,high_addr=get_base_addr(old_sample_num)
    lift_il(old_sample_num)
    get_taint_branch(old_sample_num,base_addr,high_addr)
    #cp_share_folder(old_sample_num)

def main():
    global base_addr    
    #print len(sys.argv)
    if(len(sys.argv)!=7):
        print "python schedule.py  offset1 offset2_len coverage elfpath ext_command suffix_name"
        exit()
    #get the args
    offset1=int(sys.argv[1],10)
    offset2_len=int(sys.argv[2],10)
    coverage=sys.argv[3]
    elfpath=sys.argv[4]
    ext_command=sys.argv[5]
    suffix_name=sys.argv[6]
    task_tuple=None
    while 1:
        while(task_tuple==None):
            task_tuple=get_task_data()
            if(task_tuple==None):
                print 'no address to convert'
                time.sleep(2)
            else:
                print 'task:',
                print task_tuple
        old_sample_num=task_tuple[0]
        new_sample_num=task_tuple[1]
        convert_addr=task_tuple[2]
        convert_serial_num=task_tuple[3]
        set_task_status_3(old_sample_num,new_sample_num,convert_addr,convert_serial_num) #occupy
        base_addr,high_addr=get_base_addr(old_sample_num)
        second_success=bap_cmd_second(old_sample_num,new_sample_num,offset1,offset2_len,coverage,elfpath,ext_command,suffix_name,convert_addr+base_addr,convert_serial_num)
        task_tuple=None
        if(second_success==1):
            set_task_status_1(old_sample_num,new_sample_num,convert_addr,convert_serial_num)
        else:
            # task fails
            set_task_status_2(old_sample_num,new_sample_num,convert_addr,convert_serial_num)

            

    
main()
#convert_path(1,0x804854f,1)
#print str(stp_solve(1,134514254))

            

    
    




