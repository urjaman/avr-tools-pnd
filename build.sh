#!/bin/sh
set -e
[ -z "$1" ] && rm -rf bld
mkdir -p bld
./build-bu.sh
./build-gcc.sh
./build-libc.sh
./build-avrdude.sh
./build-avarice.sh
./build-gdb.sh
#exit 0
./build-git.sh
./build-make.sh
