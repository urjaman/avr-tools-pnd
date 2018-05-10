#!/bin/sh
. ./build-cfg
#gdb
stashrm gdb
mkdir gdb; cd gdb
../../src/gdb-*/configure --prefix=$PREFIX --target=avr --disable-nls --enable-languages=c,c++ --with-guile=guile-2.0
make $MJ
make install

