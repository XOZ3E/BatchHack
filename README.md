# BatchHack
I tried to using batch files to block HID on windows but it is not working .If anyone knows please let me know why.I tired it because __Windows Security__ didn't Detect it.
# To Disable:
@echo off
REM Disable all USB ports
SET SERVICES=HKLM\SYSTEM\CurrentControlSet\Services
REG ADD %SERVICES%\USBSTOR /v Start /t REG_DWORD /d 4 /f
echo All USB ports have been disabled.
pause
# To Enable:
@echo off
REM Enable all USB ports
SET SERVICES=HKLM\SYSTEM\CurrentControlSet\Services
REG ADD %SERVICES%\USBSTOR /v Start /t REG_DWORD /d 3 /f
echo All USB ports have been enabled.
pause

