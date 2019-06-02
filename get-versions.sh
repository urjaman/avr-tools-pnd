#!/bin/sh

git_version() {
REV=$(git rev-parse HEAD)
BR=$(git branch | awk '/\*/ { print $2; }')
echo $REV on $BR
}

echo -n "avr-tools-pnd: "
git_version

cd src

cd binutils-gdb
echo -n "binutils: "
git_version
cd ..

cd gcc
echo -n "gcc: "
git_version
cd ..

cd git
echo -n "git: "
git_version
cd ..

cd dfu-programmer
echo -n "dfu-programmer: "
git_version
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
ls -d1 gdb*
