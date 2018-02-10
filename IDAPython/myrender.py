from idautils import *
from idaapi import *
from idc import *
trace_bbl = []
def color_trace(filename,mycolor):
    mybase_addr = get_imagebase()
    # read trace file
    f_trace = open(filename,'r')
    for line in f_trace.readlines():
        #get trace address list
        trace_bbl.insert(-1,mybase_addr+int(line,10))
    #print trace_bbl
    # color the trace
    for addr in trace_bbl:
        set_color(addr,CIC_ITEM,mycolor)

color_trace('/Users/longlong/VirtualBox VMs/ubuntu14-disk/IDAPython/1-1-addrs.txt',0xff)

#set_color(here(), CIC_SEGM, 0xffffff)


