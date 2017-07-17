#!/bin/sh
. ./build-cfg
#avr-libc
cp -a ../src/avr-libc lc
cd lc
./bootstrap
unset CC CXX
./configure --build=`./config.guess`  --host=avr --prefix=$PREFIX
make $MJ
make install
# because we dont have the tools to build the manual, we just extract a downloaded version
tar xvf ../src/avr-libc-user-manual*tar* -C $PREFIX
mv $PREFIX/avr-libc-user-manual* $PREFIX/avr-libc-user-manual

