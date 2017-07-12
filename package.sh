#!/bin/bash
set -e

SCRIPTSRC=`readlink -f "$0" || echo "$0"`
RUN_PATH=`dirname "${SCRIPTSRC}" || echo .`

rm -r $RUN_PATH/deploy/ || true
mkdir $RUN_PATH/deploy/

tar -cvpzf $RUN_PATH/deploy/iconv.debian64.tar.gz -C $RUN_PATH/iconv/debian64 .
tar -cvpzf $RUN_PATH/deploy/iconv.win64.tar.gz -C $RUN_PATH/iconv/win64 .

cd $RUN_PATH/iconv/debian64 && zip -r $RUN_PATH/deploy/iconv.debian64.zip .
cd $RUN_PATH/iconv/win64 && zip -r $RUN_PATH/deploy/iconv.win64.zip .