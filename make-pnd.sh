#!/bin/sh
# Final touches on the PND (including the PND files), and make the pnd...
cp -va pnd/* /mnt/utmp/avrtools/
cp versions.txt /mnt/utmp/avrtools/
chmod -R go+u /mnt/utmp/avrtools/
mksquashfs /mnt/utmp/avrtools avrtools.sqfs -all-root
cat avrtools.sqfs pnd/PXML.xml pnd/icon.png > avrtools.pnd
