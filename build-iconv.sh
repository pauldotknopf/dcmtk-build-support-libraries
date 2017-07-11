#!/bin/bash
set -e

SCRIPTSRC=`readlink -f "$0" || echo "$0"`
RUN_PATH=`dirname "${SCRIPTSRC}" || echo .`

rm -r $RUN_PATH/iconv/* || true

docker run -it -v $RUN_PATH:/work -w /work dcmtk-support-build sh scripts/build-iconv-win64.sh
docker run -it -v $RUN_PATH:/work -w /work dcmtk-support-build sh scripts/build-iconv-debian64.sh