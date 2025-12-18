@echo off
echo Setting up build environment for Ludan Control Board...

REM Clean existing build directory
if exist build rmdir /s /q build
mkdir build
cd build

REM Configure CMake with ARM toolchain and Ninja
echo Configuring CMake with ARM toolchain...
cmake .. -G "Ninja" -DCMAKE_BUILD_TYPE=Debug -DCMAKE_TOOLCHAIN_FILE=../cmake/gcc-arm-none-eabi.cmake

if %ERRORLEVEL% EQU 0 (
    echo.
    echo Configuration successful!
    echo.
    echo To build:
    echo   ninja
    echo.
    echo To flash:
    echo   JLink.exe -CommanderScript ../flash.jlink
    echo.
    cd ..
) else (
    echo.
    echo Configuration failed!
    cd ..
    exit /b 1
)