#!/bin/sh
. ./build-cfg
#avr-libc
stashrm lcdoc
cp -a ../src/avr-libc lcdoc
cd lcdoc
./bootstrap
unset CC CXX
./configure --build=`./config.guess`  --host=avr --prefix=$PREFIX
cd doc/api
make html
cp -a avr-libc-user-manual-* $PREFIX_HOST/avr-libc-user-manual
