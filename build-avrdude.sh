#!/bin/sh
. ./build-cfg
#avrdude
stashrm ad
mkdir ad; cd ad
../../src/avrdude*/configure --prefix=$PREFIX --disable-shared --disable-static
make $MJ
make install

