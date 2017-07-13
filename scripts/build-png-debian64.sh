#!/bin/bash
set -e

rm -rf tmp
mkdir tmp
cd tmp

wget -O- https://sourceforge.net/projects/libpng/files/libpng16/1.6.30/libpng-1.6.30.tar.gz | tar xvz
cd libpng-1.6.30

export "CFLAGS=-I/work/zlib/debian64/include"
export "CPPFLAGS=-I/work/zlib/debian64/include"
export "LDFLAGS=-L/work/zlib/debian64/lib"

./configure --prefix=/work/png/debian64 --with-zlib-prefix=/work/zlib/debian64

make
make install

