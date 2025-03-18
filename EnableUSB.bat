@echo off
REM Enable all USB ports
SET SERVICES=HKLM\SYSTEM\CurrentControlSet\Services
REG ADD %SERVICES%\USBSTOR /v Start /t REG_DWORD /d 3 /f
echo All USB ports have been enabled.
pause