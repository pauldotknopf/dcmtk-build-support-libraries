#!/bin/bash
set -e

rm -rf tmp
mkdir tmp
cd tmp

wget -O- http://www.ijg.org/files/jpegsrc.v9b.tar.gz | tar xvz
cd jpeg-9b

./configure --prefix=/work/jpeg/win64 --host=x86_64-w64-mingw32

make
make install