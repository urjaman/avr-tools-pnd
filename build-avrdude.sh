#!/bin/sh
set -e
#avrdude
mkdir ad; cd ad
../../src/avrdude*/configure --prefix=$PREFIX --disable-shared --disable-static
make $MJ
make install

