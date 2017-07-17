#!/bin/sh
. ./build-cfg
#make
mkdir mk; cd mk
../../src/make*/configure --prefix=$PREFIX --disable-nls
make $MJ
make install

