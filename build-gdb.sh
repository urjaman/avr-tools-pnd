#!/bin/sh
. ./build-cfg
#gdb
stashrm gdb
mkdir -p gdb; cd gdb
export CXXFLAGS="-O2 -std=gnu++14 -pipe"
../../src/binutils-gdb/configure --prefix=$PREFIX --target=avr --disable-nls --enable-languages=c,c++ --enable-gdb --disable-binutils --disable-ld --disable-gold --disable-gas --disable-sim --disable-gprof
make $MJ && make install || (make || bash)

