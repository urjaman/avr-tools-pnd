#!/bin/bash
set -e
. ./build-cfg
#avarice
stashrm avarice
cp -a ../src/avarice avarice
cd avarice
./Bootstrap
./configure --prefix=$PREFIX
make $MJ
make install
