@echo off
set add=%~1
set currentpath=%CD%
cd %add%
call %currentpath%\generate_files.bat %add%
echo Wait till you generate test.txt
del temp.vbs
set n=1
set /p numf=How many dummy files do you want to create for your initial commit
:: If you have to increase the darkness of the text increase 'n'
:loop
echo Generating test%n%.txt...
copy test.txt test%n%.txt
if %n%==%numf% goto :end
set /a n=n+1
goto :loop
:end
del test.txt
git add .
git commit -m "Testrun"
git config credential.helper store
cd %currentpath%