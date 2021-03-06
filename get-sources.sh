#!/bin/sh
# Run this outside dchrt (= on a modern system) with git and subversion
set -e
rm -rf src
mkdir src; cd src
#binutils and gdb
git clone git://sourceware.org/git/binutils-gdb.git --depth=10

#gcc and support stuff
git clone git://gcc.gnu.org/git/gcc.git --depth=10
wget https://ftp.gnu.org/gnu/gmp/gmp-4.3.2.tar.bz2
wget https://ftp.gnu.org/gnu/mpc/mpc-1.0.3.tar.gz
wget http://www.mpfr.org/mpfr-current/mpfr-3.1.5.tar.bz2
cd gcc;
tar xf ../gmp-*.tar.*; mv gmp-* gmp
tar xf ../mpc-*.tar.*; mv mpc-* mpc
tar xf ../mpfr-*.tar.*; mv mpfr-* mpfr
cd ..
rm gmp-*.tar.*  mpc-*.tar.* mpfr-*.tar.*

#avr-libc
svn checkout http://svn.savannah.nongnu.org/svn/avr-libc/trunk/avr-libc/

#AVaRICE
svn checkout http://svn.code.sf.net/p/avarice/code/trunk/avarice/
patch -p1 < ../atxmega32e5.patch

#avrdude
wget http://download.savannah.gnu.org/releases/avrdude/avrdude-6.3.tar.gz
tar xf avrdude-6.3.tar.gz
rm avrdude-6.3.tar.gz

#make
wget https://ftp.gnu.org/gnu/make/make-4.2.1.tar.gz;
tar xf make-4.2.1.tar.gz
rm make-4.2.1.tar.gz

#git
git clone https://github.com/git/git.git --depth=10
cd git; patch -p1 < ../../git-chmod.patch; cd ..

wget http://download.savannah.gnu.org/releases/avr-libc/avr-libc-user-manual-2.0.0.tar.bz2

# store some version info
cd ..
./get-versions.sh > versions.txt
