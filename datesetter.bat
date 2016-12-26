@echo off
set date=%~1
set month=%~2
set year=%~3
set gitpath=%~4
set leapcheck=year
set /a leapcheck=leapcheck%4
if %date% gtr 31 if %month%==12 set /a date=date-31 & set month=1 & set /a year=year+1
if %date% gtr 30 if %month%==11 set /a date=date-30 & set month=12 
if %date% gtr 31 if %month%==10 set /a date=date-31 & set month=11
if %date% gtr 30 if %month%==9 set /a date=date-30 & set month=10
if %date% gtr 31 if %month%==8 set /a date=date-31 & set month=9
if %date% gtr 31 if %month%==7 set /a date=date-31 & set month=8
if %date% gtr 30 if %month%==6 set /a date=date-30 & set month=7
if %date% gtr 31 if %month%==5 set /a date=date-31 & set month=6
if %date% gtr 30 if %month%==4 set /a date=date-30 & set month=5
if %date% gtr 31 if %month%==3 set /a date=date-31 & set month=4
if %date% gtr 29 if %month%==2 if %leapcheck%==0 set /a date=date-29 & set month=3
if %date% gtr 28 if %month%==2 if not %leapcheck%==0 set /a date=date-28 & set month=3
if %date% gtr 31 if %month%==1 set /a date=date-31 & set month=2
call %CD%\commit@git.bat %date% %month% %year% %gitpath%