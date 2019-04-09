#!/usr/bin/env bash

##### linux for aarch64-linux-gnu toolchain
mkdir -p build-debug
pushd build-debug
cmake -DCMAKE_TOOLCHAIN_FILE=../toolchains/aarch64-linux-gnu.toolchain.cmake -DCMAKE_BUILD_TYPE=Debug ..
make -j6
cp ../benchmark/mobilenet_ssd.param ./benchmark/
popd

