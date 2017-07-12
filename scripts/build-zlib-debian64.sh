#!/bin/bash

rm -rf tmp
mkdir tmp
cd tmp

git clone https://github.com/madler/zlib.git
cd zlib
git checkout v1.2.11

./configure --prefix=/work/zlib/debian64

make
make install