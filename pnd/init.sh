#!/bin/sh
. /etc/profile
export PATH=/mnt/utmp/avrtools/bin:$PATH
export LD_LIBRARY_PATH=/mnt/utmp/avrtools/lib
cd /mnt/utmp/avrtools
echo "These are your extra tools in this shell:"
ls /mnt/utmp/avrtools/bin
echo "Happy Hacking!"
exec bash
