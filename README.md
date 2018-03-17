BAP: Binary Analysis Platform
=============================

This is a fork of the BAP version 0.8 release that appeared at:

https://github.com/0day1day/bap/



For the original README of BAP see the README.orig file.

Obviously, I don't claim any credit for BAP; see the AUTHORS file
for a list of the developers.

I have tested this fork only with the following configurations:
* Ubuntu 14.04.1 (i686)
    * gcc (Ubuntu 4.8.2-19ubuntu1) 4.8.2
    * pin-2.14-67254-gcc.4.4.7-linux
    * OPAM 1.1.1
    * OCaml 4.01.0
    * All BAP's OCaml package dependencies from OPAM
    * capstone-3.0.5-rc2.tar.gz
    * mysql
    * idapro
  



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

Running command  
-------------------

1. mywps  
python schedule.py 0 10 mywps /home/l/bap/mywps/mywps " " .txt  
python schedule1.py 0 10 mywps /home/l/bap/mywps/mywps " " .txt  

2. file  
cp mywps 1.elf
python schedule.py 0 100 file /usr/local/bin/file " " .elf 
python schedule1.py 0 100 file /usr/local/bin/file " " .elf
