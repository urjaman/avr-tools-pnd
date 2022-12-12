#!/bin/sh
. ./build-cfg
#nano
stashrm nano
mkdir nano; cd nano
../../src/nano*/configure --prefix=$PREFIX --disable-nls --disable-justify --disable-speller
make $MJ
make install
cp doc/sample.nanorc $PREFIX/etc/
# nano will use this path ($HOME/.nano in runtime) if it exists, and I'd like it to use that path
mkdir $PREFIX/.nano
