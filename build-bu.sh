#!/bin/sh
set -e
#binutils
mkdir bu; cd bu
../../src/binutils-gdb/configure --prefix=$PREFIX --target=avr --disable-nls
make $MJ
make install

