#!/bin/sh
. ./build-cfg
#avrdude
stashrm ad
mkdir ad; cd ad
cmake -D CMAKE_BUILD_TYPE=RelWithDebInfo -DCMAKE_INSTALL_PREFIX=$PREFIX -B build_linux ../../src/avrdude
cmake --build build_linux
cmake --build build_linux --target install

