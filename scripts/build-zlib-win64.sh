#!/bin/bash

rm -rf tmp
mkdir tmp
cd tmp

git clone https://github.com/madler/zlib.git
cd zlib
git checkout v1.2.11

git apply /work/scripts/patchs/libzmingw.patch

export INCLUDE_PATH=/work/zlib/win64/incude
export LIBRARY_PATH=/work/zlib/win64/lib
export BINARY_PATH=/work/zlib/win64/bin

make -fwin32/Makefile.gcc
make install -fwin32/Makefile.gcc SHARED_MODE=1