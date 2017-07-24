#!/bin/sh
. /etc/profile
export LANG=en_US.UTF-8
export PATH=/mnt/utmp/avrtools/bin:$PATH
export LD_LIBRARY_PATH=/mnt/utmp/avrtools/lib
cd /mnt/utmp/avrtools/src
Terminal --disable-server -T "AVR Tools"  --maximize -e ../init.sh
zenity --info --text "Press OK to quit/unmount AVR Tools" 
