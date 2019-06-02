#!/bin/sh
# do this before build as root (in dchrt)
mv /mnt/utmp/avrtools /mnt/utmp/avrtools.old
mkdir -p /mnt/utmp/avrtools
chmod 1777 /mnt/utmp/avrtools
chown builder:users /mnt/utmp/avrtools

