#!/usr/bin/env bash
BUILD_CONFIG=Release

mkdir ../build
cd ../build

cmake ../u3d/src/ -G "Unix Makefiles" \
    -DCMAKE_BUILD_TYPE=$BUILD_CONFIG \
    -DCMAKE_INSTALL_PREFIX=$PREFIX 

make
