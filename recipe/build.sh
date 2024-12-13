BUILD_DIR=_build

cmake -B ${BUILD_DIR} \
  ${CMAKE_ARGS} \
  -DCMAKE_INSTALL_PREFIX=$PREFIX \
  -DCMAKE_BUILD_TYPE=Release

cmake --build ${BUILD_DIR}
cmake --install ${BUILD_DIR}
