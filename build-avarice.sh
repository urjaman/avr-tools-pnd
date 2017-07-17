#!/bin/sh
. ./build-cfg
#avarice
cp -a ../src/avarice avarice
cd avarice
./Bootstrap
./configure --prefix=$PREFIX
make $MJ
make install

