#!/bin/sh
. ./build-cfg
stashrm git
cp -a ../src/git git
cd git
make $MJ prefix=$PREFIX CC=$CC all html
make prefix=$PREFIX CC=$CC install install-html
