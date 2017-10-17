#!/bin/sh
. ./build-cfg
#binutils
mkdir bu; cd bu
../../src/binutils-gdb/configure --prefix=$PREFIX --target=avr --disable-nls --disable-gdb
make $MJ
make install

