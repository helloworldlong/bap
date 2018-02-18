from idautils import *
from idaapi import *
from idc import *
import MySQLdb
import os
run_base_addr=0
g_new_num=2

def color_trace(filename):
    global run_base_addr
    old_sample_num=int(filename.split('-')[0],10)
    mybase_addr = get_imagebase()
    db = MySQLdb.connect("192.168.178.1","root","123456","bap" )
    cursor = db.cursor()
    # read trace file
    f_trace = open(filename,'r')
    for line in f_trace.readlines():
        #get trace address list
        if(run_base_addr==0):
            run_base_addr=int(line,16)
            continue
        tmp_addr=int(line.split()[0],16)+mybase_addr
        tmp_taken=int(line.split()[1],10)
        if(tmp_taken==1):
            mycolor=old_sample_num|0x80000000  
        else:
            mycolor=old_sample_num   
        print hex(tmp_addr)+' '+hex(mycolor)
        sql_cmd='INSERT IGNORE INTO status(convert_address,convert_status) VALUES('+str(tmp_addr-run_base_addr)+','+str(tmp_taken)+')' 
        cursor.execute(sql_cmd)
        db.commit()
        set_color(tmp_addr,CIC_ITEM,mycolor)
    db.close()



def get_task():
    db = MySQLdb.connect("192.168.178.1","root","123456","bap" )
    cursor = db.cursor()
    sql_cmd='select * from task where done=1;'
    cursor.execute(sql_cmd)
    data = cursor.fetchone()
    print data
    #print type(data)
    db.close()
    return data
def set_task(old_sample_num,new_sample_num,convert_addr): #finish color
    db = MySQLdb.connect("192.168.178.1","root","123456","bap" )
    cursor = db.cursor()
    sql_cmd='UPDATE task SET done=2 WHERE (old_sample_num=%d and new_sample_num=%d) and convert_address=%x;' %(old_sample_num,new_sample_num,convert_addr)
    print sql_cmd
    cursor.execute(sql_cmd)
    db.commit()
    db.close()

def insert_task(old_sample_num):
    global g_new_num
    # get the convert_addr
    db = MySQLdb.connect("192.168.178.1","root","123456","bap" )
    cursor = db.cursor()
    set_0=set()
    set_1=set()
    addr_0_cmd='select convert_address from status where convert_status=0'
    addr_1_cmd='select convert_address from status where convert_status=1'
    cursor.execute(addr_0_cmd)
    addr_0 = cursor.fetchall()
    for addr in addr_0:
        set_0.add(addr[0])
    print set_0
    cursor.execute(addr_1_cmd)
    addr_1 = cursor.fetchall()
    for addr in addr_1:
        set_1.add(addr[0])
    print set_1
    set_2=set_0^set_1
    print set_2
    for convert_addr in set_2:
        sql_cmd='INSERT INTO task(old_sample_num,new_sample_num,convert_address,done) VALUES('+str(old_sample_num)+','+str(g_new_num)+','+str(convert_addr)+','+str(0)+');'
        g_new_num=g_new_num+1
        cursor.execute(sql_cmd)
        db.commit()
    
    db.close()

def main():
    os.chdir('/Users/longlong/VirtualBox VMs/ubuntu14-disk/share')
    #get first task
    task_data=get_task()
    if(task_data):
        old_sample_num=task_data[0]
        new_sample_num=task_data[1]
        convert_addr=task_data[2]
        print 'old_sample_num:%d,new_sample_num:%d,convert_addr:%x' %(old_sample_num,new_sample_num,convert_addr)
        set_task(old_sample_num,new_sample_num,convert_addr)
        color_trace('%d-addrs.txt' %old_sample_num)
        insert_task(old_sample_num)
    else:
        print 'no first task,please run the schedule.py'

    
main()
#insert_task(1)
print 'ok'





