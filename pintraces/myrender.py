from idautils import *
from idaapi import *
from idc import *
import MySQLdb
import os
import time
#run_base_addr=0
g_new_num=2
mysql_server_ip='172.16.155.1' #mac vmnet ip
def color_trace(old_sample_num):
    #global run_base_addr
    first_line=1
    run_base_addr=0
    mybase_addr = get_imagebase()
    # read trace file
    trace_file_name='%d-addrs.txt'%old_sample_num
    f_trace = open(trace_file_name,'r')
    for line in f_trace.readlines():
        #get trace address list
        if(first_line==1):           
            run_base_addr=int(line.split()[0],16)
            print 'here'
            print hex(run_base_addr)
            first_line=0
            continue
        tmp_addr=int(line,16)+mybase_addr
        mycolor=old_sample_num   
        print hex(tmp_addr)+' '+hex(mycolor)  
        set_color(tmp_addr,CIC_ITEM,mycolor)
    f_trace.close()
    return run_base_addr
    
def get_sample_num():#return sample_num
    db = MySQLdb.connect(mysql_server_ip,"root","123456","bap" )
    cursor = db.cursor()
    sql_cmd='select sample_num from sample where status=1 order by sample_num;'
    cursor.execute(sql_cmd)
    data = cursor.fetchone()
    db.close()
    return data
def set_sample_status_2(sample_num):
    db = MySQLdb.connect(mysql_server_ip,"root","123456","bap" )
    cursor = db.cursor()
    #update sample table
    sql_cmd='update sample set status=2 where sample_num=%d' %(sample_num)
    cursor.execute(sql_cmd)
    db.commit()
    db.close()

def quicksort(nums):
    if len(nums) <= 1:
        return nums
    less = []
    greater = []
    base = nums.pop()
    for base1 in nums:
        if base1[1] < base[1]:
            less.append(base1)
        else:
            greater.append(base1)
    return quicksort(less) + [base] + quicksort(greater)

def insert_task(run_base_addr,old_sample_num):
    global g_new_num
    # get the convert_addr
    db = MySQLdb.connect(mysql_server_ip,"root","123456","bap" )
    cursor = db.cursor()
    trace_file_name='%d-addrs1.txt'%old_sample_num
    module_file_name='%d-module.txt'%old_sample_num
    f_module=open(module_file_name,'r')
    module_list=[]
    for line in f_module.readlines():
        hash_val=int(line.split()[0],16) #can not overflow!!!
        base_addr=int(line.split()[1],16)
        module_list.append((hash_val,base_addr))
    print module_list
    f_module.close()
    #sort
    sort_module_list=quicksort(module_list)

    f_taint = open(trace_file_name,'r')
    #print str(old_sample_num)+' run_base_addr: '+hex(run_base_addr)
    for line in f_taint.readlines():
        line_num=int(line.split()[0],10) #can not overflow!!!
        convert_addr=int(line.split()[1],10)
        for base1 in sort_module_list:
            if(convert_addr>base1[1]):
                print 'before hash '+hex(convert_addr)
                convert_addr=convert_addr-base1[1]
                convert_addr=convert_addr^base1[0]
                print 'after hash '+hex(convert_addr)
                break
        convert_serial_num=int(line.split()[2],10) 
        print hex(convert_addr),str(line_num),str(convert_serial_num)
        
        sql_cmd='insert ignore into task(old_sample_num,new_sample_num,convert_address,convert_serial_num,line_num,status) values('+str(old_sample_num)+','+str(g_new_num)+','+str(convert_addr)+','+str(convert_serial_num)+','+str(line_num)+','+str(0)+');'
        mm=cursor.execute(sql_cmd)
        if(mm):
            print sql_cmd
            g_new_num=g_new_num+1
        else:
            print 'not insert '+sql_cmd
        db.commit()
    f_taint.close()
    db.close()

def main():
    os.chdir('/Users/longlong/VirtualBox VMs/ubuntu14-disk/share')
    sample_num=1
    sample_num_tuple=None
    while(1):
        while(sample_num_tuple==None):
            sample_num_tuple=get_sample_num()
            if(sample_num_tuple==None):
                print 'no trace to color'
                time.sleep(2)
            else:
                print 'get trace %d'%sample_num_tuple[0]
                break
        sample_num=sample_num_tuple[0]
        set_sample_status_2(sample_num)
        #print sample_num
        run_base_addr=color_trace(sample_num)
        if(run_base_addr==0):
            print 'run_base_addr=0'
            exit()
        insert_task(run_base_addr,sample_num)
        sample_num_tuple=None
    

    
main()
print 'ok'





