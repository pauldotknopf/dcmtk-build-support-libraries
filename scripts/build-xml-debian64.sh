#!/bin/bash
set -e

rm -rf tmp
mkdir tmp
cd tmp

wget -O- http://xmlsoft.org/sources/libxml2-2.9.4.tar.gz | tar xvz
cd libxml2-2.9.4

./configure --prefix=/work/xml/debian64 --without-python

make
make install