#!/bin/sh
. ./paths-cfg
rm -f avrtools.sqfs
mksquashfs $PREFIX_HOST avrtools.sqfs -comp xz -all-root
cat avrtools.sqfs pnd/PXML.xml pnd/icon.png > avrtools.pnd
