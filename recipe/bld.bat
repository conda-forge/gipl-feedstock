set "BUILD_DIR=_build"

cmake -G Ninja ^
  -DCMAKE_INSTALL_PREFIX:PATH=%LIBRARY_PREFIX% ^
  -DCMAKE_PREFIX_PATH:PATH="%LIBRARY_PREFIX%" ^
  -DCMAKE_BUILD_TYPE=Release ^
  %CMAKE_ARGS%
if %ERRORLEVEL% neq 0 exit 1

cmake --build %BUILD_DIR%
if %ERRORLEVEL% neq 0 exit 1

cmake --install %BUILD_DIR%
if %ERRORLEVEL% neq 0 exit 1
