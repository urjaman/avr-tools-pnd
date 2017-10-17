#!/bin/sh
. build-cfg
cd $PREFIX/bin
rm gitk
strip *
cd ..
rm -rf include
cd lib
strip --strip-debug *.so
rm libavr-sim.a
cd ../libexec
strip git-core/*
cd gcc/avr/*/
strip cc1 cc1plus collect2 lto-wrapper lto1
cd ../../../../share
rm -rf info man locale

