#!/bin/sh
set -e
#avrdude
mkdir ad; cd ad
../../src/avrdude*/configure --prefix=$PREFIX 
make $MJ
make install

