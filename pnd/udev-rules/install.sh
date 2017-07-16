#!/bin/bash
if [ "$(id -u)" != "0" ]; then
	echo "Run me with sudo or as root"
	exit 1
fi
cp --no-clobber *.rules /etc/udev/rules.d/
/sbin/udevadm control --reload-rules
