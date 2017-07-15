#!/bin/sh

echo -n "avr-tools-pnd: "
git rev-parse HEAD

cd src

cd binutils-gdb
echo -n "binutils-gdb: "
git rev-parse HEAD
cd ..

cd gcc
echo -n "gcc: "
git rev-parse HEAD
cd ..

cd git
echo -n "git: "
git rev-parse HEAD
cd ..

cd avr-libc
echo -n "avr-libc: "
svn info | awk '/Revision/ { print $2; }'
cd ..

cd avarice
echo -n "avarice: "
svn info | awk '/Revision/ { print $2; }'
cd ..

ls -d1 avrdude*

ls -d1 make*
