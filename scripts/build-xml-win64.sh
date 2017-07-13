#!/bin/bash
set -e

rm -rf tmp
mkdir tmp
cd tmp

wget -O- http://xmlsoft.org/sources/libxml2-2.9.4.tar.gz | tar xvz
cd libxml2-2.9.4

./configure --host=x86_64-w64-mingw32 --prefix=/work/xml/win64 --without-python

make
make install