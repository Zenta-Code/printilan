@echo off
setlocal enabledelayedexpansion

set "root_dir=%CD%"
set "packages_dir=%root_dir%\packages"
set "apps_dir=%root_dir%\apps"

echo Updating packages in the root project
cd %root_dir% 

echo Updating packages in the 'packages' directory
cd %packages_dir%
for /D %%d in (*) do (
    if exist "%%d\pubspec.yaml" (
        cd "%%d"
        echo Updating package: %%d
        flutter pub get
        cd %packages_dir%
    )
)

echo Updating packages in the 'apps' directory
cd %apps_dir%
for /D %%d in (*) do (
    if exist "%%d\pubspec.yaml" (
        cd "%%d"
        echo Updating package: %%d
        flutter pub get
        cd %apps_dir%
    )
)
 
cd %root_dir%

echo Finished updating Flutter packages.
