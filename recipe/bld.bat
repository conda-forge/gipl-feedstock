set "BUILD_DIR=_build"

cmake -LA -B %BUILD_DIR% -G Ninja ^
  %CMAKE_ARGS% ^
  -DCMAKE_INSTALL_PREFIX:PATH=%LIBRARY_PREFIX% ^
  -DCMAKE_BUILD_TYPE=Release
if %ERRORLEVEL% neq 0 exit 1

cmake --build %BUILD_DIR%
if %ERRORLEVEL% neq 0 exit 1

cmake --install %BUILD_DIR%
if %ERRORLEVEL% neq 0 exit 1
