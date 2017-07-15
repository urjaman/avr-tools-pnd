#!/bin/sh
set -e
#avr-libc
cp -a ../src/avr-libc lc
cd lc
./bootstrap
unset CC CXX
./configure --build=`./config.guess`  --host=avr --prefix=$PREFIX
make $MJ
make install
