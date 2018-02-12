from idautils import *
from idaapi import *
from idc import *
import MySQLdb
import os
trace_bbl = []
def color_trace(filename):
    old_sample_num=int(filename.split('-')[0],10)
    mybase_addr = get_imagebase()
    # read trace file
    f_trace = open(filename,'r')
    for line in f_trace.readlines():
        #get trace address list
        tmp_addr=int(line.split()[0],16)+mybase_addr
        tmp_taken=int(line.split()[1],10)
        if(tmp_taken==1):
            mycolor=old_sample_num|0x80000000
        else:
            mycolor=old_sample_num
        print hex(tmp_addr)+' '+hex(mycolor)
        set_color(tmp_addr,CIC_ITEM,mycolor)

def my_db_insert(old_sample_num,new_sample_num,convert_address): #int int int
    db = MySQLdb.connect("192.168.178.1","root","123456","bap" )
    cursor = db.cursor()
    sql_cmd='INSERT INTO BAP(old_sample_num,new_sample_num,convert_address) VALUES('+str(old_sample_num)+','+str(new_sample_num)+','+hex(convert_address)+')'
    cursor.execute(sql_cmd)
    db.commit()
    db.close()

os.chdir('/Users/longlong/VirtualBox VMs/ubuntu14-disk/IDAPython/')
color_trace('1-addrs.txt')
#my_db_insert(1,3,0x1b)

#color_trace('/Users/longlong/VirtualBox VMs/ubuntu14-disk/IDAPython/1-1-addrs.txt',0xff)




