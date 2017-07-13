#!/bin/bash
set -e

SCRIPTSRC=`readlink -f "$0" || echo "$0"`
RUN_PATH=`dirname "${SCRIPTSRC}" || echo .`

rm -r $RUN_PATH/deploy/ || true
mkdir $RUN_PATH/deploy/

#tar -cvpzf $RUN_PATH/deploy/iconv-1.15.debian64.tar.gz -C $RUN_PATH/iconv/debian64 .
#tar -cvpzf $RUN_PATH/deploy/iconv-1.15.win64.tar.gz -C $RUN_PATH/iconv/win64 .

#cd $RUN_PATH/iconv/debian64 && zip -r $RUN_PATH/deploy/iconv-1.15.debian64.zip .
#cd $RUN_PATH/iconv/win64 && zip -r $RUN_PATH/deploy/iconv-1.15.win64.zip .

#tar -cvpzf $RUN_PATH/deploy/openssl-1.0.2k.debian64.tar.gz -C $RUN_PATH/openssl/debian64 .
#tar -cvpzf $RUN_PATH/deploy/openssl-1.0.2k.win64.tar.gz -C $RUN_PATH/openssl/win64 .

#cd $RUN_PATH/openssl/debian64 && zip -r $RUN_PATH/deploy/openssl-1.0.2k.debian64.zip .
#cd $RUN_PATH/openssl/win64 && zip -r $RUN_PATH/deploy/openssl-1.0.2k.win64.zip .

function generate {
    LIBNAME=$1 
    FILENAME=$2
    ARCH=$3
    tar -cvpzf $RUN_PATH/deploy/$FILENAME.$ARCH.tar.gz -C $RUN_PATH/$LIBNAME/$ARCH .
    cd $RUN_PATH/$LIBNAME/$ARCH && zip -r $RUN_PATH/deploy/$FILENAME.$ARCH.zip .
}

generate iconv iconv-1.15 win64
generate iconv iconv-1.15 win32
generate iconv iconv-1.15 debian64

generate jpeg jpeg-9.2.0 win64
generate jpeg jpeg-9.2.0 win32
generate jpeg jpeg-9.2.0 debian64

generate openssl openssl-1.0.2k win64
generate openssl openssl-1.0.2k win32
generate openssl openssl-1.0.2k debian64

generate png png-1.6.30 win64
generate png png-1.6.30 win32
generate png png-1.6.30 debian64

generate tiff tiff-3.9.7 win64
generate tiff tiff-3.9.7 win32
generate tiff tiff-3.9.7 debian64

generate xml xml-2.9.4 win64
generate xml xml-2.9.4 win32
generate xml xml-2.9.4 debian64

generate zlib zlib-1.2.11 win64
generate zlib zlib-1.2.11 win32
generate zlib zlib-1.2.11 debian64