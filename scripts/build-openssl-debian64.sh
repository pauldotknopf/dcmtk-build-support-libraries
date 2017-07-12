#!/bin/bash
set -e

rm -rf tmp
mkdir tmp
cd tmp

wget -O- https://www.openssl.org/source/openssl-1.0.2k.tar.gz | tar xvz
cd openssl-1.0.2k

./config --prefix=/work/openssl/debian64 -fPIC shared
make
make install