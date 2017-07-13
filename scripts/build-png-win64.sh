#!/bin/bash
set -e

rm -rf tmp
mkdir tmp
cd tmp

wget -O- https://sourceforge.net/projects/libpng/files/libpng16/1.6.30/libpng-1.6.30.tar.gz | tar xvz
cd libpng-1.6.30

export "CFLAGS=-I/work/zlib/win64/include"
export "CPPFLAGS=-I/work/zlib/win64/include"
export "LDFLAGS=-L/work/zlib/win64/lib"

./configure --host=x86_64-w64-mingw32 --prefix=/work/png/win64 --with-zlib-prefix=/work/zlib/win64

make
make install

