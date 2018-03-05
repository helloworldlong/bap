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
    
    #filename = filepath.split("/")[-1]  #-logall-after 1
    pin_cmd = "/home/l/bap/pin/pin -t /home/l/bap/pintraces/obj-ia32/gentrace.so   -taint-offsets "+str(offset1)+" -taint-offsets "+str(offset2_len)+"  -o "+ str(old_sample_num)+" -log-limit 10000 -ins-limit 1000000  -c "+coverage+" -taint-files "+str(old_sample_num)+suffix_name+" --  "+elfpath+" "+ext_command+" "+str(old_sample_num)+suffix_name
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

def get_sample_num():#return sample_num
    db = MySQLdb.connect(mysql_server_ip,"root","123456","bap" )
    cursor = db.cursor()
    sql_cmd='select sample_num from sample where status=0 order by sample_num;'
    cursor.execute(sql_cmd)
    data = cursor.fetchone()
    db.close()
    return data
def set_sample_status_1(sample_num):
    db = MySQLdb.connect(mysql_server_ip,"root","123456","bap" )
    cursor = db.cursor()
    #update sample table
    sql_cmd='update sample set status=1 where sample_num=%d' %(sample_num)
    cursor.execute(sql_cmd)
    db.commit()
    db.close()
def set_sample_status_3(sample_num): #occupy
    db = MySQLdb.connect(mysql_server_ip,"root","123456","bap" )
    cursor = db.cursor()
    #update sample table
    sql_cmd='update sample set status=3 where sample_num=%d' %(sample_num)
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
    taint_branch = dict()
    f_il=open(str(old_sample_num)+'-3.il','r')
    file_lines=f_il.readlines()
    f_il.close()
    serial_num=1
    file_line_num=1 #can not exceed 2^32 lines
    for line in file_lines:
        if (line.find("assert ")!=-1 ) and (line.find("assert true")==-1):
            #print hex(base_addr),hex(high_addr)
            taint_addr_str=file_lines[file_line_num-2]          
            if(taint_addr_str.find('label pc_')!=-1):
                line_pos=taint_addr_str.find("label pc_0x")+len("label pc_0x")
                if(len(taint_addr_str)<=19):
                    myaddr=int(taint_addr_str[line_pos:],16) # absolute address
                else:
                    myaddr=int(taint_addr_str[taint_addr_str.find('_',0)+1:taint_addr_str.find('_',18)],16)
                #myaddr=int(taint_addr_str[line_pos:],16) # absolute address
                if(myaddr>base_addr and myaddr<high_addr):
                    #print hex(myaddr)
                    taint_branch[file_line_num]=(myaddr,serial_num)
                    serial_num=serial_num+1

            else:
                print 'taint_addr_str '+taint_addr_str 
                print file_line_num
                print 'label error'
                exit()
        file_line_num=file_line_num+1
    
    f_o=open('%d-addrs1.txt'%old_sample_num,'w')
    for line_num_1,(convert_addr_1,serial_num_1) in taint_branch.items():
        f_o.write(str(line_num_1)+' '+str(convert_addr_1)+' '+str(serial_num_1)+'\n')
    f_o.close()
   
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
    sample_num=1
    sample_num_tuple=None
    while 1:
        while(sample_num_tuple==None):
            sample_num_tuple=get_sample_num()
            if(sample_num_tuple==None):
                print 'no sample to run'
                time.sleep(2)
            else:
                sample_num=sample_num_tuple[0]
                print 'get sample_num %d' %sample_num_tuple[0]
                break
        
        set_sample_status_3(sample_num)
        print sample_num
        bap_cmd_first(sample_num,offset1,offset2_len,coverage,elfpath,ext_command,suffix_name)
        set_sample_status_1(sample_num)
        sample_num_tuple=None
        
        

            

    
main()


            

    
    




