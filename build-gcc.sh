#!/bin/sh
set -e
#gcc
mkdir gc; cd gc
../../src/gcc/configure --prefix=$PREFIX --target=avr --disable-nls --enable-languages=c,c++
make $MJ
make install

