@echo off
REM Disable USB ports
call "C:\Path\To\Your\DisableUSB.bat"

REM Start monitoring for earphone connection
powershell -ExecutionPolicy Bypass -File "C:\Path\To\Your\MonitorEarphones.ps1"