#!/bin/sh
. ./build-cfg
set -x
set +e
cd $PREFIX/bin
rm -f gitk
strip *
cd ..
rm -rf include
cd lib
rm libavr-sim.a
rm libavrdude.*
rm libcc1.*
cd ../libexec
strip git-core/*
cd gcc/avr/*/
strip cc1 cc1plus collect2 lto-wrapper lto1
cd ../../../../share
rm -rf info man locale
find $PREFIX/lib -type f -name "*.a" -exec $PREFIX/bin/avr-strip --strip-debug '{}' \;
