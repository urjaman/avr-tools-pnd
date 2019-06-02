#!/bin/sh
pacman -S --needed make gcc git subversion bison flex texinfo guile2.0 asciidoc
# Things only needed for the avr-libc HTML documentation generation:
pacman -S --needed netpbm fig2dev doxygen texlive-core
