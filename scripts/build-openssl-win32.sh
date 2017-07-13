#!/bin/bash
set -e

rm -rf tmp
mkdir tmp
cd tmp

wget -O- https://www.openssl.org/source/openssl-1.0.2k.tar.gz | tar xvz
cd openssl-1.0.2k

export CROSS_COMPILE="i686-w64-mingw32-"

./Configure --prefix=/work/openssl/win32 mingw64 no-asm shared
make
make install