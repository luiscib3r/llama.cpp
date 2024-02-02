rm -r build
mkdir build
cd build
cmake .. \
  -DLLAMA_BUILD_EXAMPLES=OFF \
  -DLLAMA_BUILD_TESTS=OFF \
  -DLLAMA_BUILD_SERVER=OFF \
  -DBUILD_SHARED_LIBS=true
cmake --build . --config Release -j $(sysctl -n hw.logicalcpu)