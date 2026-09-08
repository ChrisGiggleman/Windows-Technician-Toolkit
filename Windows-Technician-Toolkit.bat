```bat
@echo off
title Windows Technician Toolkit
color 0E
mode con: cols=60 lines=35

:menu
cls
echo ============================================================
echo                 WINDOWS TECHNICIAN TOOLKIT
echo ============================================================
echo.
echo   SYSTEM TOOLS
echo   ----------------------------------------------------------
echo    1. Command Prompt
echo    2. PowerShell
echo    3. Registry Editor
echo    4. Services
echo    5. Event Viewer
echo    6. Computer Management
echo.
echo   USER / POLICY TOOLS
echo   ----------------------------------------------------------
echo    7. Local Users and Groups
echo    8. Group Policy Editor
echo.
echo   RECOVERY / SECURITY
echo   ----------------------------------------------------------
echo    9. System Restore
echo   10. Recovery Settings
echo   11. Windows Security
echo.
echo   NETWORK TOOLS
echo   ----------------------------------------------------------
echo   12. IP Configuration
echo   13. Flush DNS
echo   14. Release / Renew IP
echo   15. Network Connections
echo.
echo   OTHER
echo   ----------------------------------------------------------
echo   16. Task Manager
echo   17. Device Manager
echo   18. System Information
echo   19. Control Panel
echo   20. Exit
echo.
echo ============================================================

set /p choice="Select Option: "

if "%choice%"=="1" start "" cmd.exe
if "%choice%"=="2" start "" powershell.exe
if "%choice%"=="3" start "" regedit.exe
if "%choice%"=="4" start "" services.msc
if "%choice%"=="5" start "" eventvwr.msc
if "%choice%"=="6" start "" compmgmt.msc

if "%choice%"=="7" start "" lusrmgr.msc
if "%choice%"=="8" start "" gpedit.msc

if "%choice%"=="9" start "" rstrui.exe
if "%choice%"=="10" start "" ms-settings:recovery
if "%choice%"=="11" start "" windowsdefender:

if "%choice%"=="12" (
    cls
    echo ============================================================
    echo                    IP CONFIGURATION
    echo ============================================================
    echo.
    ipconfig /all
    echo.
    pause
)

if "%choice%"=="13" (
    cls
    echo ============================================================
    echo                      FLUSH DNS
    echo ============================================================
    echo.
    echo Flushing DNS resolver cache...
    echo.
    ipconfig /flushdns
    echo.
    pause
)

if "%choice%"=="14" (
    cls
    echo ============================================================
    echo                    NETWORK REFRESH
    echo ============================================================
    echo.
    echo Releasing current IP address...
    ipconfig /release
    echo.
    echo Renewing IP address...
    ipconfig /renew
    echo.
    echo Flushing DNS resolver cache...
    ipconfig /flushdns
    echo.
    pause
)

if "%choice%"=="15" start "" ncpa.cpl

if "%choice%"=="16" start "" taskmgr.exe
if "%choice%"=="17" start "" devmgmt.msc
if "%choice%"=="18" start "" msinfo32.exe
if "%choice%"=="19" start "" control.exe
if "%choice%"=="20" exit

goto menu
```
