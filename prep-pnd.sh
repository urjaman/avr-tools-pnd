#!/bin/sh
# Final touches on the PND
. ./paths-cfg
cp -va pnd/* $PREFIX/
cp versions.txt $PREFIX/
cp -vL /usr/ngcc/lib/libstdc++.so.6 $PREFIX/lib
strip $PREFIX/lib/libstdc++.so.6
# gdb links to ... stuff (TBD why not static)
cp -vL /usr/lib/libncursesw.so.6 $PREFIX/lib
cp -aL /usr/share/terminfo $PREFIX/share/terminfo
# ^ a reasonable terminfo database is needed for ncurses6
cp -vL /usr/lib/libmpfr.so.4 $PREFIX/lib
cp -vL /usr/lib/libgmp.so.3 $PREFIX/lib
chmod -R go+u $PREFIX/
