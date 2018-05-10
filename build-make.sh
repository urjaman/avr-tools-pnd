#!/bin/sh
. ./build-cfg
#make
stashrm mk
mkdir mk; cd mk
../../src/make*/configure --prefix=$PREFIX --disable-nls
make $MJ
make install

