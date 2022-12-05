#!/bin/sh
# Final touches on the PND
. ./paths-cfg
cp -va pnd/* $PREFIX/
cp versions.txt $PREFIX/
cp -vL /usr/ngcc/lib/libstdc++.so.6 $PREFIX/lib
strip $PREFIX/lib/libstdc++.so.6
cp -vL /usr/lib/libncursesw.so.6 $PREFIX/lib
chmod -R go+u $PREFIX/
