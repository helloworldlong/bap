import os
import subprocess
import binascii
import struct
import shutil
import sys

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

def convert_path(convert_addr):#int
    #give the convert address(int)
    print "[*] convert_path addr: ", hex(convert_addr)
    f_il=open('x_1.il','r')
    file_lines=f_il.readlines()
    f_il.close()
    file_line_num=0
    find_convert_line=0
    for line in file_lines:
        line_pos=line.find("label pc_0x")+len("label pc_0x")
        if (line.find("label pc_0x")!=-1 ):
            myaddr=int(line[line_pos:],16) # absolute address
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
def bap_cmd(old_sample_num,new_sample_num,offset1,offset2_len,coverage,elfpath,ext_command,suffix_name,convert_addr):
    run_pin_cmd(old_sample_num,offset1,offset2_len,coverage,elfpath,ext_command,suffix_name)
    lift_il(old_sample_num)
    convert_path(convert_addr)  #0804862C          
    il_f()
    stp_solve()
    make_sample(old_sample_num,new_sample_num,suffix_name)

if __name__ == "__main__":
    #print "python schedule.py  module_name elf_path ext_command good_sample bad_sample"
    print len(sys.argv)
    bap_cmd(1,2,1,5,'mywps','/home/l/bap/mywps/mywps',' ','.txt',0x080485f4) #0x080485D5 0x0804862C
    if(len(sys.argv)!=6):
        pass
        #print "python schedule_identify.py  module_name elf_path ext_command good_sample bad_sample"
    else:
        pass
        #main(sys.argv)




