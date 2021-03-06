#!/usr/bin/env bash

BASE=$(cd `dirname $0`; pwd)
ROOT=$BASE/..

cmake "$ROOT" -DCMAKE_TOOLCHAIN_FILE="$BASE"/iOS.cmake \
-DPLATFORM=ARM \
-DBUILD_EXAMPLE=OFF \
-DBUILD_SHARED_LIBS=OFF \
-DCMAKE_BUILD_TYPE=Release \
-DCMAKE_INSTALL_PREFIX=/usr/local \
-DIOS_DEPLOYMENT_TARGET=9 \
$@

# -DIOS_PLATFORM=OS
# -DIOS_PLATFORM=SIMULATOR64

