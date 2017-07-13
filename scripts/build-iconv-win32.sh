#!/bin/bash
set -e

rm -rf tmp
mkdir tmp
cd tmp

wget -O- http://ftp.gnu.org/pub/gnu/libiconv/libiconv-1.15.tar.gz | tar xvz
cd libiconv-1.15

./configure --prefix=/work/iconv/win32 --host=i686-w64-mingw32 --enable-static

make
make install