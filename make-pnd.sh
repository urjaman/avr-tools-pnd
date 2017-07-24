#!/bin/sh
rm -f avrtools.sqfs
mksquashfs ~/dchrt/mnt/utmp/avrtools avrtools.sqfs -comp xz -all-root
cat avrtools.sqfs pnd/PXML.xml pnd/icon.png > avrtools.pnd
