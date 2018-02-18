import os
import subprocess
import binascii
import struct
import shutil
import sys
import MySQLdb
import time

#/home/l/bap/pin/pin -t /home/l/bap/pintraces/obj-ia32/gentrace.so -taint-offsets 0x1 -taint-offsets 6 -o 1-1 -log-limit 10000 -ins-limit 1000000 -c "mywps"  -taint-files 1.txt -- /home/l/bap/mywps/mywps /home/l/bap/mywps/1.txt
def run_pin_cmd(old_sample_num,offset1,offset2_len,coverage,elfpath,ext_command,suffix_name):
    
    #filename = filepath.split("/")[-1]
    pin_cmd = "/home/l/bap/pin/pin -t /home/l/bap/pintraces/obj-ia32/gentrace.so  -taint-offsets "+str(offset1)+" -taint-offsets "+str(offset2_len)+"  -o "+ str(old_sample_num)+" -log-limit 10000 -ins-limit 1000000  -c "+coverage+" -taint-files "+str(old_sample_num)+suffix_name+" --  "+elfpath+" "+ext_command+" "+str(old_sample_num)+suffix_name
    print "[*] pin cmd: ", pin_cmd
    os.system(pin_cmd)
#streamtrans -tracestream ./1-1-trace.bpt -trace-concrete -pp-ast x.il
def lift_il(old_sample_num):#int
    lift_il_cmd="streamtrans -tracestream "+str(old_sample_num)+"-trace.bpt"+" -trace-concrete -pp-ast x.il"
    print "[*] lift il cmd: ", lift_il_cmd
    os.system(lift_il_cmd)
    #deal_il x.il xx.il
    deal_il_cmd="deal_il x.il xx.il"
    os.system(deal_il_cmd)
    #iltrans -il xx.il -replace-unknowns -uniqueify-labels -pp-ast x_1.il
    iltrans_cmd="iltrans -il xx.il -replace-unknowns -uniqueify-labels -pp-ast x_1.il"
    print "[*] iltrans il cmd: ", iltrans_cmd
    os.system(iltrans_cmd)

def convert_path(convert_addr,base_addr):#int
    #give the convert address(int)
    print "[*] convert_path addr: ", hex(convert_addr)
    convert_addr=base_addr+convert_addr
    f_il=open('x_1.il','r')
    file_lines=f_il.readlines()
    f_il.close()
    file_line_num=0
    find_convert_line=0
    for line in file_lines:
        line_pos=line.find("label pc_0x")+len("label pc_0x")
        if (line.find("label pc_0x")!=-1 ):
            myaddr=int(line[line_pos:],16) # absolute address
            print 'myaddr %x'%myaddr
            print 'convert_addr %x'%convert_addr
            if(myaddr==convert_addr):
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
        f_il_c=open('x_1_c.il','w')
        for line in file_lines:
            f_il_c.write(line)
        f_il_c.close()
    else:
        print 'convert fail'
        exit()
def il_f():
    il_f_cmd='topredicate -il x_1_c.il -q -noopt -stp-out x.f' 
    print "[*] il_f  cmd: ", il_f_cmd   
    os.system(il_f_cmd)
def stp_solve():
    stp_cmd='stp x.f > x.s'
    print "[*] stp  cmd: ", stp_cmd
    os.system(stp_cmd)
def make_sample(old_sample_num,new_sample_num,suffix_name): #int int string
    make_sample_cmd='makenewsample x.s '+str(old_sample_num)+'-assist.txt '+ str(old_sample_num)+suffix_name+' '+str(new_sample_num)+suffix_name
    print "[*] make_sample  cmd: ", make_sample_cmd
    os.system(make_sample_cmd)
def get_task():
    db = MySQLdb.connect("192.168.178.1","root","123456","bap" )
    cursor = db.cursor()
    sql_cmd='select * from task where done=0;'
    cursor.execute(sql_cmd)
    data = cursor.fetchone()
    print data
    #print type(data)
    db.close()
    return data
def set_task(old_sample_num,new_sample_num,convert_addr):
    db = MySQLdb.connect("192.168.178.1","root","123456","bap" )
    cursor = db.cursor()
    sql_cmd='UPDATE task SET done=1 WHERE (old_sample_num=%d and new_sample_num=%d) and convert_address=%d;' %(old_sample_num,new_sample_num,convert_addr)
    #print sql_cmd
    cursor.execute(sql_cmd)
    db.commit()
    db.close()
    
def cp_share_folder(old_sample_num):
    os.system('mv %s-addrs.txt /mnt/hgfs/ubuntu14-disk/share/' %old_sample_num)

def get_base_addr(old_sample_num):
    filename1='%d-addrs.txt'%old_sample_num
    ff=open(filename1,'r')
    line = ff.readline()
    base_addr=int(line,16)
    return base_addr


def bap_cmd(old_sample_num,new_sample_num,offset1,offset2_len,coverage,elfpath,ext_command,suffix_name,convert_addr):
    run_pin_cmd(old_sample_num,offset1,offset2_len,coverage,elfpath,ext_command,suffix_name)
    base_addr=get_base_addr(old_sample_num)
    lift_il(old_sample_num)
    convert_path(convert_addr,base_addr)  #0804862C          
    il_f()
    stp_solve()
    make_sample(old_sample_num,new_sample_num,suffix_name)
    cp_share_folder(old_sample_num)
def bap_cmd_first(old_sample_num,new_sample_num,offset1,offset2_len,coverage,elfpath,ext_command,suffix_name,convert_addr):
    run_pin_cmd(old_sample_num,offset1,offset2_len,coverage,elfpath,ext_command,suffix_name)
    cp_share_folder(old_sample_num)


    

if __name__ == "__main__":
    
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
    first_run=0
    #get the first task
    if(first_run==1): 
        first_run=0
        task_data=get_task()
        if(task_data):
            old_sample_num=task_data[0]
            new_sample_num=task_data[1]
            convert_addr=task_data[2]
            print 'old_sample_num:%d,new_sample_num:%d,convert_addr:%x' %(old_sample_num,new_sample_num,convert_addr)
            set_task(old_sample_num,new_sample_num,convert_addr)
            bap_cmd_first(old_sample_num,new_sample_num,offset1,offset2_len,coverage,elfpath,ext_command,suffix_name,convert_addr)
        else:
            print 'no first task,please run the create_bap_table.py'
            exit()
    else:
        task_data=get_task()
        if(task_data):
            old_sample_num=task_data[0]
            new_sample_num=task_data[1]
            convert_addr=task_data[2]
            print 'old_sample_num:%d,new_sample_num:%d,convert_addr:%x' %(old_sample_num,new_sample_num,convert_addr)
            set_task(old_sample_num,new_sample_num,convert_addr)
            bap_cmd(old_sample_num,new_sample_num,offset1,offset2_len,coverage,elfpath,ext_command,suffix_name,convert_addr)
        else:
            print 'no task'
            time.sleep(2)

            

    
    




