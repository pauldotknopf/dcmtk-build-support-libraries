#!/bin/bash
set -e

rm -rf tmp
mkdir tmp
cd tmp

wget -O- https://sourceforge.net/projects/libpng/files/libpng16/1.6.30/libpng-1.6.30.tar.gz | tar xvz
cd libpng-1.6.30

export "CFLAGS=-I/work/zlib/win32/include"
export "CPPFLAGS=-I/work/zlib/win32/include"
export "LDFLAGS=-L/work/zlib/win32/lib"

./configure --host=i686-w64-mingw32 --prefix=/work/png/win32 --with-zlib-prefix=/work/zlib/win32

make
make install

