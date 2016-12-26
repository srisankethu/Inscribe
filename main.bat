@echo off
title inscribe
call progressbar.bat
echo Do you want to clone your repository ? If yes press y else press n
echo set voice = Wscript.CreateObject("SAPI.spVoice") > "tempo.vbs"
echo voice.speak "Do you want to clone your repository ? If yes press y else press n" >> "tempo.vbs"
start tempo.vbs
set /p choose=Enter y or n:
if %choose%==y goto :yes
if %choose%==n goto :no
:yes
echo set voice = Wscript.CreateObject("SAPI.spVoice") > "tempo.vbs"
echo voice.speak "Paste the address where you store your repositories" >> "tempo.vbs"
start tempo.vbs
set /p reppath=Paste the address where you store your repositories:
echo set voice = Wscript.CreateObject("SAPI.spVoice") > "tempo.vbs"
echo voice.speak "Enter url of your repository" >> "tempo.vbs"
start tempo.vbs
set /p giturl=Enter url of your repository:
echo set voice = Wscript.CreateObject("SAPI.spVoice") > "tempo.vbs"
echo voice.speak "Enter repository name" >> "tempo.vbs"
start tempo.vbs
set /p repname=Enter repository name:
call generaterepo.bat %reppath% %giturl% %repname%
set reppath=reppath+repname
echo set voice = Wscript.CreateObject("SAPI.spVoice") > "tempo.vbs"
echo voice.speak "Enter no of letters" >> "tempo.vbs"
start tempo.vbs
set /p num=Enter no of letters:
call generate_letters.bat %num% %reppath%
goto :end
:no
echo set voice = Wscript.CreateObject("SAPI.spVoice") > "tempo.vbs"
echo voice.speak "Paste the address of your repository" >> "tempo.vbs"
start tempo.vbs
set /p repspath=Paste the address of your repository:
echo %repspath%
call generate_files_for_directory.bat %repspath%
echo set voice = Wscript.CreateObject("SAPI.spVoice") > "tempo.vbs"
echo voice.speak "Enter no of letters" >> "tempo.vbs"
start tempo.vbs
set /p num=Enter no of letters:
call generate_letters.bat %num% %repspath%
goto :end
:end
del tempo.vbs