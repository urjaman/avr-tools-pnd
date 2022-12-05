#!/bin/sh
. ./build-cfg
#avr-libc-doc
stashrm lcdoc
cp -a ../src/avr-libc lcdoc
cd lcdoc
# N.B. simplest way to make this work on the host side is to have some sort of an AVR toolchain installed
./bootstrap
unset CC CXX
./configure --build=`./config.guess`  --host=avr --prefix=$PREFIX
cd doc/api
make html
cp -a avr-libc-user-manual-* $PREFIX_HOST/avr-libc-user-manual
