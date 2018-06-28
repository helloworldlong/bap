This work is based on BAP(Binary Analysis Platform)
macos:
    sudo docker start mymysql
    sudo docker exec -it mymysql /bin/bash
    mysql -uroot -p123456
    use bap;

ubuntu:
    cd /home/l/bap/pintraces
    ./reset.sh
macos: 
    cd /Users/longlong/VirtualBox VMs/ubuntu14-disk/IDAPython
    python create_bap_table.py
    IDA Pro  open the test program and run myrender.py IDAPython script
    GetColor(here(),CIC_ITEM)
ubuntu:
    cd /mnt/hgfs/ubuntu14-disk/share
    python schedule.py 0 100 mywps ./mywps " " .txt 
    python schedule1.py 0 100 mywps ./mywps " " .txt 



=============================

This is a fork of the BAP version 0.8 release that appeared at:

Building on Linux
-----------------

Install all dependencies of BAP with OPAM (also see the INSTALL file).
Then download Pin version 2.14-67254-gcc.4.4.7-linux and place it at
./bap/pin. Finally do:

    ./autogen.sh
    ./configure --with-z3=`pwd`/solvers/z3
    make

Add the ./bap/utils directory to your path. The Pintool is at
./bap/pintraces/obj-ia32/gentrace.so.

docker command : mysql database 
-------------------


vmware share folder   
-------------------


Running command  
-------------------

1. mywps  
python schedule.py 0 10 mywps /home/l/bap/mywps/mywps " " .txt  
python schedule1.py 0 10 mywps /home/l/bap/mywps/mywps " " .txt  

2. file  
cp mywps 1.elf
python schedule.py 0 100 file /usr/local/bin/file " " .elf 
python schedule1.py 0 100 file /usr/local/bin/file " " .elf
