@echo off

echo Stopping OneDrive services...
taskkill /f /im OneDrive.exe >nul 2>&1
net stop OneSyncSvc >nul 2>&1
net stop OneSyncSvc_2d7e7 >nul 2>&1
net stop OneDriveUpdaterSvc >nul 2>&1

echo Waiting for 5 seconds...
timeout /t 5 >nul

echo Starting OneDrive services...
net start OneSyncSvc >nul 2>&1
net start OneSyncSvc_2d7e7 >nul 2>&1
net start OneDriveUpdaterSvc >nul 2>&1
start "" "C:\Program Files\Microsoft OneDrive\OneDrive.exe"

echo OneDrive restarted successfully.
timeout /t 5 >nul
@echo off