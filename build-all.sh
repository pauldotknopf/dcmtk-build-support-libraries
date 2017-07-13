#!/bin/bash
set -e

./build-iconv.sh
./build-openssl.sh
./build-zlib.sh
./build-jpeg.sh
./build-tiff.sh
./build-png.sh
./build-xml.sh