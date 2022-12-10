#!/bin/sh
. ./build-cfg
#nano
stashrm nano
mkdir nano; cd nano
../../src/nano*/configure --prefix=$PREFIX --disable-nls --disable-justify --disable-speller
make $MJ
make install
cp doc/sample.nanorc $PREFIX/etc/
