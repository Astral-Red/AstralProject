@echo off
chcp 65001 >nul
cls

set "InstallDir=C:\AstralBypass-Direc"
set "Run=RunTool.bat"
if not exist "%InstallDir%" mkdir "%InstallDir%"

color 0a
echo.
echo ------------------------------------------------------------------------------------------------------------------------
echo ░█████╗░░██████╗████████╗██████╗░░█████╗░██╗░░░░░██████╗░██╗░░░██╗██████╗░░█████╗░░██████╗░██████╗███████╗██████╗░
echo ██╔══██╗██╔════╝╚══██╔══╝██╔══██╗██╔══██╗██║░░░░░██╔══██╗╚██╗░██╔╝██╔══██╗██╔══██╗██╔════╝██╔════╝██╔════╝██╔══██╗
echo ███████║╚█████╗░░░░██║░░░██████╔╝███████║██║░░░░░██████╦╝░╚████╔╝░██████╔╝███████║╚█████╗░╚█████╗░█████╗░░██████╔╝
echo ██╔══██║░╚═══██╗░░░██║░░░██╔══██╗██╔══██║██║░░░░░██╔══██╗░░╚██╔╝░░██╔═══╝░██╔══██║░╚═══██╗░╚═══██╗██╔══╝░░██╔══██╗
echo ██║░░██║██████╔╝░░░██║░░░██║░░██║██║░░██║███████╗██████╦╝░░░██║░░░██║░░░░░██║░░██║██████╔╝██████╔╝███████╗██║░░██║
echo ╚═╝░░╚═╝╚═════╝░░░░╚═╝░░░╚═╝░░╚═╝╚═╝░░╚═╝╚══════╝╚═════╝░░░░╚═╝░░░╚═╝░░░░░╚═╝░░╚═╝╚═════╝░╚═════╝░╚══════╝╚═╝░░╚═╝
echo ------------------------------------------------------------------------------------------------------------------------
echo.
echo.
echo 
echo This script is only to bypass PC with admin. im not responsable for the use you make.                               
echo -------------------------------------------------------------------
echo. 
echo        [1] osu!                             [2] ???
echo. 
echo.
echo.
echo.
echo.
echo        [3] ???                              [4] ???
echo.
echo.
echo -------------------------------------------------------------------
echo.


set /p Choose="Type what installation do you want to start (1,?,?): "

setlocal enabledelayedexpansion
set "download_url="
set "installer_name="

if "%Choose%"=="1" (
    set "download_url=https://www.dropbox.com/scl/fi/90ilw2lhoqmm2jcklnzss/osu-install.exe?rlkey=9bduj31fr3sr1an7xidmy83qk&st=5fyp8lsz&dl=1"
    set "installer_name=osuinstall.exe"
) else if "%Choose%"=="2" (
    set "download_url=???"
    set "installer_name=???"
) else if "%Choose%"=="3" (
    set "download_url=???"
    set "installer_name=???"
) else if "%Choose%"=="4" (
    set "download_url=???
    set "installer_name=????"
) else (
    echo Choose not valid. Exit...
    exit /b
)

powershell -Command "& {Invoke-WebRequest -Uri '%download_url%' -OutFile '%InstallDir%\%installer_name%'}"

(
echo cmd /min /C "set __COMPAT_LAYER=runasinvoker && start "" "%%1"
) > "%InstallDir%\%Run%"

echo Starting the Download...

set /p run="Do you want to run the game? (S/N): "
if /i "%run%"=="S" (
    echo To start the game just drag the installer in the directory into the file RunTool.bat / if you need help just use github 
    start "" "%InstallDir%\%game_exe%"
) else (
    echo Installation Compleate. Now you can close the CMD.
)

pause