#!/bin/bash
set -e

SCRIPTSRC=`readlink -f "$0" || echo "$0"`
RUN_PATH=`dirname "${SCRIPTSRC}" || echo .`

rm -r $RUN_PATH/zlib/* || true

docker run -it --rm -v $RUN_PATH:/work -w /work dcmtk-support-build sh scripts/build-zlib-win64.sh
docker run -it --rm -v $RUN_PATH:/work -w /work dcmtk-support-build sh scripts/build-zlib-win32.sh
docker run -it --rm -v $RUN_PATH:/work -w /work dcmtk-support-build sh scripts/build-zlib-debian64.sh