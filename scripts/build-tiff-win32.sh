#!/bin/bash
set -e

rm -rf tmp
mkdir tmp
cd tmp

wget -O- http://download.osgeo.org/libtiff/tiff-3.9.7.tar.gz | tar xvz
cd tiff-3.9.7

./configure --host=i686-w64-mingw32 --prefix=/work/tiff/win32 --with-jpeg-include-dir=/work/jpeg/win32/include --with-jpeg-lib-dir=/work/jpeg/win32/lib

make
make install