@echo off
title Generate git repo
set currentpath=%CD%
set gitopath=%~1
cd %gitopath%
set giturll=%~2
set reponame=%~3
git clone %giturll%
pause
cd %reponame%
call %currentpath%\generate_files.bat %gitopath%\%reponame%
set nuf=How many dump files do you want to create for your initial commit
del temp.vbs
set n=1
:: If you have to increase the darkness of the text increase 'n'
:loop
echo Generating test%n%.txt...
copy test.txt test%n%.txt
if %n%==%nuf% goto :end
set /a n=n+1
goto :loop
:end
del test.txt
git add .
git commit -m "Testrun"
git config credential.helper store
cd %currentpath%