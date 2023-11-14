@echo off
setlocal enabledelayedexpansion

echo Start fixing Flutter packages
echo use dart fix --dry-run --apply to fix the packages

set "root_dir=%CD%"
set "packages_dir=%root_dir%\packages"
set "apps_dir=%root_dir%\apps"

echo Fixing packages in the 'packages' directory
cd %packages_dir%
for /D %%d in (*) do (
    if exist "%%d\pubspec.yaml" (
        cd "%%d"
        echo Fixing package: %%d
        dart fix --dry-run --apply
        cd %packages_dir%
    )
)

echo Fixing packages in the 'apps' directory
cd %apps_dir%
for /D %%d in (*) do (
    if exist "%%d\pubspec.yaml" (
        cd "%%d"
        echo Fixing package: %%d
        dart fix --dry-run --apply
        cd %apps_dir%
    )
)

cd %root_dir%

echo Finished fixing Flutter packages.
