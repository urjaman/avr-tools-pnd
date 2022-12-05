#!/bin/sh
# Run this outside dchrt (= on a modern system) with git and subversion
set -e
. ./funcs.sh

# if re-running, comment this out..
stashrm src
# (also comment out the things that you already got done, but you know...)

mkdir -p src; cd src

#binutils (and gdb, we build them seperate but use the same source)
git clone git://sourceware.org/git/binutils-gdb.git -b binutils-2_39-branch --depth=2

#gcc and support stuff (N.B: intentionally old gcc)
git clone git://gcc.gnu.org/git/gcc.git -b releases/gcc-8 --depth=2
cd gcc;
./contrib/download_prerequisites
# also provide them to binutils
cp -vL isl ../binutils-gdb/isl
cp -vL gmp ../binutils-gdb/gmp
cp -vL mpc ../binutils-gdb/mpc
cp -vL mpfr ../binutils-gdb/mpfr
cd ..

#avr-libc
git clone https://github.com/avrdudes/avr-libc --depth=2

#AVaRICE
git clone https://github.com/Florin-Popescu/avarice --depth=2

#avrdude
git clone https://github.com/avrdudes/avrdude --depth=2

#make
wget https://ftp.gnu.org/gnu/make/make-4.4.tar.gz
tar xf make-*.tar.gz
rm make-*.tar.gz

#git
git clone https://github.com/git/git.git --depth=2
cd git; patch -p1 < ../../git-chmod.patch; cd ..

# dfu-programmer
git clone https://github.com/dfu-programmer/dfu-programmer --depth=2

# store some version info
cd ..
#echo "TODO" > versions.txt
./get-versions.sh > versions.txt
