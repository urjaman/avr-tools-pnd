#!/bin/sh
export LD_LIBRARY_PATH=/mnt/utmp/avrtools/lib
[ -e README ] && echo "Hint: Use 'less README' for more info."
echo "These are your extra tools in this shell:"
ls /mnt/utmp/avrtools/bin
echo "Happy Hacking!"
exec bash
