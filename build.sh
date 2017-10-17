#!/bin/sh
set -e
[ -z "$1" ] && rm -rf bld
mkdir -p bld
./build-bu.sh
./build-gcc.sh
./build-libc.sh
./build-git.sh
./build-avrdude.sh
./build-avarice.sh
./build-make.sh
./build-gdb.sh
