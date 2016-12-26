@echo off
set "progressbar=                                        "
set /a progress=0
set comment=Checking files
:loop
cls
echo Loading...%comment%
echo ---------------------------------------------
echo %progressbar% %progress%%%
echo ---------------------------------------------
ping localhost -n 2 > nul
set progressbar=[]%progressbar:~0,-2%
if %progress%==100 goto :end
set /a progress=progress+5
if %progress%==20 (
set comment=Verifying files
ping localhost -n 2 > nul
)
if %progress%==40 (
set comment=Verifying GitDesktop
ping localhost -n 2 > nul
)
if %progress%==60 (
set comment=Securing connection
ping localhost -n 2 > nul
)
if %progress%==80 (
set comment=Setting up platform
ping localhost -n 2 > nul
)
goto :loop
:end
echo Setup complete!