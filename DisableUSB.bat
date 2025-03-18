@echo off
REM Disable all USB ports
SET SERVICES=HKLM\SYSTEM\CurrentControlSet\Services
REG ADD %SERVICES%\USBSTOR /v Start /t REG_DWORD /d 4 /f
echo All USB ports have been disabled.
pause