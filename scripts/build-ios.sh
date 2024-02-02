rm -r build
mkdir build
cd build
cmake -G Xcode .. \
  -DLLAMA_BUILD_EXAMPLES=OFF \
  -DLLAMA_BUILD_TESTS=OFF \
  -DLLAMA_BUILD_SERVER=OFF \
  -DCMAKE_SYSTEM_NAME=iOS \
  -DCMAKE_OSX_DEPLOYMENT_TARGET=14.0
cmake --build . --config Release -j $(sysctl -n hw.logicalcpu)