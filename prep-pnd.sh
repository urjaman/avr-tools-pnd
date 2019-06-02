#!/bin/sh
# Final touches on the PND
. ./paths-cfg
cp -va pnd/* $PREFIX/
cp versions.txt $PREFIX/
cp -vL /usr/gcc6/lib/libstdc++.so.6 $PREFIX/lib
strip $PREFIX/lib/libstdc++.so.6
chmod -R go+u $PREFIX/
