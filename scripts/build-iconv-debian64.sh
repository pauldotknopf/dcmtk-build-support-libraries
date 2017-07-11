#!/bin/bash
set -e

rm -rf tmp
mkdir tmp
cd tmp

wget -O- http://ftp.gnu.org/pub/gnu/libiconv/libiconv-1.15.tar.gz | tar xvz
cd libiconv-1.15

export CFLAGS=-fPIC
export CPPFLAGS=-fPIC
./configure --prefix=/work/iconv/debian64 --enable-static
make
make install