#!/bin/sh
set -e
rm -rf bld
mkdir bld
./build-bu.sh
./build-gcc.sh
./build-libc.sh
./build-git.sh
./build-avrdude.sh
./build-avarice.sh
./build-make.sh
