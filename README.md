This work is based on BAP(Binary Analysis Platform)
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
