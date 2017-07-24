#!/bin/sh
[ -e README ] && echo "Hint: Use 'less README' for more info."
echo "These are your extra tools in this shell:"
ls /mnt/utmp/avrtools/bin
echo "Happy Hacking!"
exec bash
