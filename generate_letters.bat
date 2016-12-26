@echo off
title Generate letters
echo Enter in the same order i.e Date,Month,Year
set /p datee=Enter date(1-31):
set /p monthh=Enter month(1-12):
set /p yearr=Enter year:
set no=7
set nu=%no%
set gitppath=C:\Users\srisanketh\Documents\GitHub\testrepo
echo Enter a letter one by one(No spaces or special characters)
:loop
set /p letter=
call letters\letter_%letter%.bat %datee% %monthh% %yearr% %gitppath%
set /a datee=datee+28
set /a no=no-1
if %no%==0 goto :end
echo set voice = Wscript.CreateObject("SAPI.spVoice") > "tempi.vbs"
echo voice.speak %letter% "generated" >> "tempi.vbs"
start tempi.vbs
goto :loop
:end
del tempi.vbs