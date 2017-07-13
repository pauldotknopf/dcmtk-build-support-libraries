#!/bin/bash
set -e

rm -rf tmp
mkdir tmp
cd tmp

wget -O- http://www.ijg.org/files/jpegsrc.v9b.tar.gz | tar xvz
cd jpeg-9b

./configure --prefix=/work/jpeg/debian64

make
make install