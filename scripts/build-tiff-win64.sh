#!/bin/bash
set -e

rm -rf tmp
mkdir tmp
cd tmp

wget -O- http://download.osgeo.org/libtiff/tiff-3.9.7.tar.gz | tar xvz
cd tiff-3.9.7

./configure --host=x86_64-w64-mingw32 --prefix=/work/tiff/win64 --with-jpeg-include-dir=/work/jpeg/win64/include --with-jpeg-lib-dir=/work/jpeg/win64/lib

make
make install