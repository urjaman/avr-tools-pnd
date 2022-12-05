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
echo -n "binutils-gdb: "
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
git_version
cd ..

cd avarice
echo -n "avarice: "
git_version
cd ..

cd avrdude
echo -n "avrdude: "
git_version
cd ..

ls -d1 make*
