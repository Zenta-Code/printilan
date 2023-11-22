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
        echo Building generated code for package: %%d
        dart build_runner build --delete-conflicting-outputs
        cd %packages_dir%
    )
)

echo Building generated code in the 'apps' directory
cd %apps_dir%
for /D %%d in (*) do (
    if exist "%%d\pubspec.yaml" (
        cd "%%d"
        echo Building generated code for package: %%d
        dart build_runner build --delete-conflicting-outputs
        cd %apps_dir%
    )
)

cd %root_dir%

echo Finished building generated code.

