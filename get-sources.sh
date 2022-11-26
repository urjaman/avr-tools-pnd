#!/bin/sh
# Run this outside dchrt (= on a modern system) with git and subversion
set -e
. ./funcs.sh

# if re-running, comment this out..
stashrm src
# (also comment out the things that you already got done, but you know...)

mkdir -p src; cd src

#binutils
git clone git://sourceware.org/git/binutils-gdb.git -b binutils-2_39-branch --depth=2

#gdb
wget ftp://ftp.gnu.org/gnu/gdb/gdb-8.3.1.tar.xz
tar -xf gdb-*.tar.xz
rm gdb-*.tar.xz

#gcc and support stuff
git clone git://gcc.gnu.org/git/gcc.git -b releases/gcc-8 --depth=2
#wget https://ftp.gnu.org/gnu/gmp/gmp-4.3.2.tar.bz2
#wget https://ftp.gnu.org/gnu/mpc/mpc-1.0.3.tar.gz
#wget --no-check-certificate http://www.mpfr.org/mpfr-3.1.6/mpfr-3.1.6.tar.gz
cd gcc;
./contrib/download_prerequisites
#tar xf ../gmp-*.tar.*; mv gmp-* gmp
#tar xf ../mpc-*.tar.*; mv mpc-* mpc
#tar xf ../mpfr-*.tar.*; mv mpfr-* mpfr
cd ..
#rm gmp-*.tar.*  mpc-*.tar.* mpfr-*.tar.*

#avr-libc
git clone https://github.com/avrdudes/avr-libc --depth=2
#svn checkout http://svn.savannah.nongnu.org/svn/avr-libc/trunk/avr-libc/

#AVaRICE
git clone https://github.com/Florin-Popescu/avarice --depth=2
#svn checkout http://svn.code.sf.net/p/avarice/code/trunk/avarice/
#patch -p1 < ../atxmega32e5.patch

#avrdude
git clone https://github.com/avrdudes/avrdude --depth=2
#wget http://download.savannah.gnu.org/releases/avrdude/avrdude-6.3.tar.gz
#tar xf avrdude-*.tar.gz
#rm avrdude-*.tar.gz

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
