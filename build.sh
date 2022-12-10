#!/bin/sh
. ./funcs.sh
set -e
[ -z "$1" ] && stashrm bld
mkdir -p bld
./build-bu.sh
./build-gcc.sh
./build-libc.sh
./build-avrdude.sh
./build-avarice.sh
./build-gdb.sh
./build-dfup.sh
#exit 0
./build-git.sh
./build-make.sh
./build-nano.sh
