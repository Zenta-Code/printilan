@echo off
setlocal enabledelayedexpansion

echo Start building generated code
echo use dart build_runner build --delete-conflicting-outputs to build the generated code

set "root_dir=%CD%"
set "packages_dir=%root_dir%\packages"
set "apps_dir=%root_dir%\apps"

echo Building generated code in the 'packages' directory
cd %packages_dir%
for /D %%d in (*) do (
    if exist "%%d\pubspec.yaml" (
        cd "%%d"
        echo Checking if %%d has build_runner dependency
        findstr /I "build_runner" pubspec.yaml > nul 2>&1
        if !errorlevel! equ 0 (
            echo build_runner dependency found
            start "" cmd /c dart run build_runner build --delete-conflicting-outputs
        ) else (
            echo build_runner dependency not found
        )
        cd %packages_dir%
    )
)

echo Building generated code in the 'apps' directory
cd %apps_dir%
for /D %%d in (*) do (
    if exist "%%d\pubspec.yaml" (
        cd "%%d"
        echo Checking if %%d has build_runner dependency
        findstr /I "build_runner" pubspec.yaml > nul 2>&1
        if !errorlevel! equ 0 (
            echo build_runner dependency found
            start "" cmd /c dart run build_runner build --delete-conflicting-outputs
        ) else (
            echo build_runner dependency not found
        )
        cd %apps_dir%
    )
)

cd %root_dir%

echo Finished building generated code.
