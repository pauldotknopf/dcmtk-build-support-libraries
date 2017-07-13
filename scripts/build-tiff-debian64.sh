#!/bin/bash
set -e

rm -rf tmp
mkdir tmp
cd tmp

wget -O- http://download.osgeo.org/libtiff/tiff-3.9.7.tar.gz | tar xvz
cd tiff-3.9.7

./configure --prefix=/work/tiff/debian64 --with-jpeg-include-dir=/work/jpeg/debian64/include --with-jpeg-lib-dir=/work/jpeg/debian64/lib

make
make install