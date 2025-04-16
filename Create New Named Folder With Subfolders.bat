@echo off
set /p "folderName=Enter Folder Name: "

if "%folderName%"=="" (
    echo No folder name provided. Exiting.
    exit /b 1
)

mkdir "%folderName%" 2>nul
if exist "%folderName%" (
    echo Created folder: "%folderName%"
    mkdir "%folderName%\Folder 1"
    mkdir "%folderName%\Folder 2"
    echo Created subfolders: "Folder 1" and "Folder 2"
) else (
    echo Error: Failed to create folder or it already exists.
)
