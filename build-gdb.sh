#!/bin/sh
. ./build-cfg
#gdb
mkdir gdb; cd gdb
../../src/gdb-*/configure --prefix=$PREFIX --target=avr --disable-nls --enable-languages=c,c++
make $MJ
make install

