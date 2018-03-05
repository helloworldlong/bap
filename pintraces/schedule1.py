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

def convert_path(old_sample_num,convert_addr,line_num):#int
    #give the convert address(int)
    print "[*] convert_path addr: "+hex(convert_addr)+' '+str(line_num)
    f_il=open(str(old_sample_num)+'-3.il','r')
    file_lines=f_il.readlines()
    f_il.close()
    find_convert_line=0
          
    convert_line=file_lines[line_num-1]
    if(convert_line.find('assert')!=-1):
        file_lines[line_num-1]='assert ~('+convert_line[7:-1]+')'+'\n'
        find_convert_line=1
        print 'find convert line',str(line_num)
        
    else:
        print 'error assert'
        exit()  
     
        
    if(find_convert_line==1):
        f_il_c=open(str(old_sample_num)+'-4_'+hex(convert_addr)+'_'+str(line_num)+'.il','w')
        tmp_line_num=0
        for line in file_lines:
            if(tmp_line_num<line_num):
                f_il_c.write(line)
            else:
                break
            tmp_line_num=tmp_line_num+1
        f_il_c.close()
    else:
        print 'convert fail'
        exit()
def il_f(old_sample_num,convert_addr,line_num):
    f_il_c=str(old_sample_num)+'-4_'+hex(convert_addr)+'_'+str(line_num)+'.il'
    f_f=str(old_sample_num)+'-4_'+hex(convert_addr)+'_'+str(line_num)+'.f'
    il_f_cmd='topredicate -il '+f_il_c+' -q -noopt -stp-out '+f_f
    print "[*] il_f  cmd: ", il_f_cmd   
    os.system(il_f_cmd)
def stp_solve(old_sample_num,convert_addr,line_num):
    f_f=str(old_sample_num)+'-4_'+hex(convert_addr)+'_'+str(line_num)+'.f'
    f_s=str(old_sample_num)+'-4_'+hex(convert_addr)+'_'+str(line_num)+'.s'
    stp_cmd='stp '+f_f+' > '+f_s
    print "[*] stp  cmd: ", stp_cmd
    os.system(stp_cmd)
    
    my_s_file=open(f_s,'r')
    first_line=my_s_file.readline()
    my_s_file.close()
    if(first_line=='Valid.\n'):
        return 0
    else:
        return 1
def make_sample(old_sample_num,new_sample_num,suffix_name,convert_addr,line_num): #int int string
    f_s=str(old_sample_num)+'-4_'+hex(convert_addr)+'_'+str(line_num)+'.s'
    make_sample_cmd='makenewsample  '+f_s+' '+str(old_sample_num)+'-assist.txt '+ str(old_sample_num)+suffix_name+' '+str(new_sample_num)+suffix_name
    print "[*] make_sample  cmd: ", make_sample_cmd
    os.system(make_sample_cmd)

def get_task_data():#return sample_num
    db = MySQLdb.connect(mysql_server_ip,"root","123456","bap" )
    cursor = db.cursor()
    sql_cmd='select old_sample_num,new_sample_num,convert_address,convert_serial_num,line_num from task where status=0 order by convert_address;'
    cursor.execute(sql_cmd)
    data = cursor.fetchone()
    db.close()
    #print data
    #print type(data)
    return data
   
def set_task_status_1(old_sample_num,new_sample_num,convert_addr,convert_serial_num,line_num):
    db = MySQLdb.connect(mysql_server_ip,"root","123456","bap" )
    cursor = db.cursor()
    sql_cmd='update task set status=1 where old_sample_num=%d and new_sample_num=%d  and convert_address=%d and convert_serial_num=%d and line_num=%d;' %(old_sample_num,new_sample_num,convert_addr,convert_serial_num,line_num)
    #print sql_cmd
    cursor.execute(sql_cmd)
    db.commit()
    db.close()
#occupy status
def set_task_status_3(old_sample_num,new_sample_num,convert_addr,convert_serial_num,line_num):
    db = MySQLdb.connect(mysql_server_ip,"root","123456","bap" )
    cursor = db.cursor()
    sql_cmd='update task set status=3 where old_sample_num=%d and new_sample_num=%d and convert_address=%d and convert_serial_num=%d and line_num=%d;' %(old_sample_num,new_sample_num,convert_addr,convert_serial_num,line_num)
    #print sql_cmd
    cursor.execute(sql_cmd)
    db.commit()
    db.close()
#failure status
def set_task_status_2(old_sample_num,new_sample_num,convert_addr,convert_serial_num,line_num):
    db = MySQLdb.connect(mysql_server_ip,"root","123456","bap" )
    cursor = db.cursor()
    sql_cmd='update task set status=2 where old_sample_num=%d and new_sample_num=%d and convert_address=%d and convert_serial_num=%d and line_num=%d;' %(old_sample_num,new_sample_num,convert_addr,convert_serial_num,line_num)
    #print sql_cmd
    cursor.execute(sql_cmd)
    db.commit()
    db.close()
    
def get_base_addr(old_sample_num):
    filename1='%d-addrs.txt'%old_sample_num
    ff=open(filename1,'r')
    line = ff.readline()
    base_addr=int(line.split()[0],16)
    high_addr=int(line.split()[1],16)
    ff.close()
    return base_addr,high_addr

def insert_sample(sample_num):
    db = MySQLdb.connect(mysql_server_ip,"root","123456","bap" )
    cursor = db.cursor()
    sql_cmd='insert ignore into sample(sample_num,status) values('+str(sample_num)+','+str(0)+');'
    cursor.execute(sql_cmd)
    db.commit()
    db.close()
def bap_cmd_second(old_sample_num,new_sample_num,offset1,offset2_len,coverage,elfpath,ext_command,suffix_name,convert_addr,convert_serial_num,line_num):
    global base_addr,high_addr
    convert_path(old_sample_num,convert_addr,line_num)  #0804862C          
    il_f(old_sample_num,convert_addr,line_num)
    stp_success=stp_solve(old_sample_num,convert_addr,line_num)
    if(stp_success==1):
        make_sample(old_sample_num,new_sample_num,suffix_name,convert_addr,line_num)
        insert_sample(new_sample_num)
        return 1
    else:
        print "stp does not solve it."
        return 0
    
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
        line_num=task_tuple[4]
        set_task_status_3(old_sample_num,new_sample_num,convert_addr,convert_serial_num,line_num) #occupy
        base_addr,high_addr=get_base_addr(old_sample_num)
        second_success=bap_cmd_second(old_sample_num,new_sample_num,offset1,offset2_len,coverage,elfpath,ext_command,suffix_name,convert_addr+base_addr,convert_serial_num,line_num)
        task_tuple=None
        if(second_success==1):
            set_task_status_1(old_sample_num,new_sample_num,convert_addr,convert_serial_num,line_num)
        else:
            # task fails
            set_task_status_2(old_sample_num,new_sample_num,convert_addr,convert_serial_num,line_num)

            

    
main()


            

    
    




