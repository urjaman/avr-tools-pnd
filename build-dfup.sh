#!/bin/sh
. ./build-cfg
#dfu-programmer
stashrm dfup
cp -a ../src/dfu-programmer dfup
cd dfup
./bootstrap.sh
./configure --prefix=$PREFIX
make $MJ
make install

