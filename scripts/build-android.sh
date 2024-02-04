#!/bin/bash
# add NDK path to your .bash_profile
echo $NDK
rm -r build
mkdir build
cd build
cmake -DCMAKE_TOOLCHAIN_FILE=$NDK/build/cmake/android.toolchain.cmake \
-DLLAMA_BUILD_EXAMPLES=OFF \
-DLLAMA_BUILD_TESTS=OFF \
-DLLAMA_BUILD_SERVER=OFF \
-DANDROID_ABI=$1 \
-DANDROID_PLATFORM=android-23 \
-DCMAKE_C_FLAGS=-march=armv8.4a+dotprod \
-DBUILD_SHARED_LIBS=true ..
make