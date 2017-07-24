#!/bin/sh
# Final touches on the PND (including the PND files), and make the pnd...
PREFIX=/mnt/utmp/avrtools
cp -va pnd/* $PREFIX/
cp versions.txt $PREFIX/
cp -vL /usr/gcc6/lib/libstdc++.so.6 $PREFIX/lib
strip $PREFIX/lib/libstdc++.so.6
chmod -R go+u $PREFIX/
rm -f avrtools.sqfs
mksquashfs /mnt/utmp/avrtools avrtools.sqfs -all-root
cat avrtools.sqfs pnd/PXML.xml pnd/icon.png > avrtools.pnd
