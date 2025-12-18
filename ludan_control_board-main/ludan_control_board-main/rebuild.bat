@echo off
echo Rebuilding Ludan Control Board...

REM Check if build directory exists
if not exist build (
    echo Build directory not found. Running setup first...
    call setup_build.bat
    if %ERRORLEVEL% NEQ 0 exit /b 1
)

cd build

REM Build with Ninja
echo Building...
ninja

if %ERRORLEVEL% EQU 0 (
    echo.
    echo Build successful!
    echo.
    echo Output files:
    dir ludan_control_board.*
    echo.
    cd ..
) else (
    echo.
    echo Build failed!
    cd ..
    exit /b 1
)