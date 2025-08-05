@echo off
setlocal

set "SOURCE=C:\SourceFolder"
set "LOGFILE=C:\LogFolder\backup.log"

set "BACKUP1=C:\Backup Folder 1"
set "BACKUP2=C:\Backup Folder 2"
set "BACKUP3=C:\Backup Folder 3"

echo Starting backup...
echo Log file: %LOGFILE%
echo.

rem Clear previous log
del "%LOGFILE%" >nul 2>&1

rem Perform backup to each location
robocopy "%SOURCE%" "%BACKUP1%" /MIR /DCOPY:T /COPY:DAT /R:1 /W:1 /NP /LOG+:"%LOGFILE%"
robocopy "%SOURCE%" "%BACKUP2%" /MIR /DCOPY:T /COPY:DAT /R:1 /W:1 /NP /LOG+:"%LOGFILE%"
robocopy "%SOURCE%" "%BACKUP3%" /MIR /DCOPY:T /COPY:DAT /R:1 /W:1 /NP /LOG+:"%LOGFILE%"

echo.
echo Backups completed to:
echo - %BACKUP1%
echo - %BACKUP2%
echo - %BACKUP3%
echo.
echo ============================================
echo Displaying Robocopy Log:
echo ============================================
type "%LOGFILE%"
echo.
pause
endlocal
