#!/bin/sh
export MJ=-j6
set -e
export PREFIX=/mnt/utmp/avrtools
export PATH=$PREFIX/bin:$PATH
rm -rf bld
mkdir bld
cd bld
../build-bu.sh
../build-gcc.sh
../build-libc.sh
../build-git.sh
../build-avrdude.sh
../build-avarice.sh
../build-make.sh
