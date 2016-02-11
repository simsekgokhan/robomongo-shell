@echo off
setlocal enableextensions enabledelayedexpansion

rem -----------------------------------
rem - Configuration
rem -----------------------------------

rem Path to bin and project folder
set BIN_DIR_WITH_BACKSLASH=%~dp0%
set BIN_DIR=%BIN_DIR_WITH_BACKSLASH:~0,-1%
set PROJECT_DIR=%BIN_DIR%\..

rem -----------------------------------
rem - Execution
rem -----------------------------------

cd "%PROJECT_DIR%

rem Build mongo shell in release mode
scons mongo.exe -j8 --release --dynamic-windows %*
