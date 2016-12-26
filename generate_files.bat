@echo off
setlocal enabledelayedexpansion
title Welcome to File Generator
echo set voice = Wscript.CreateObject("SAPI.spVoice") > "temp.vbs"
echo voice.speak "Welcome to File Generator" >> "temp.vbs"
echo voice.speak "What is your filename going to be" >> "temp.vbs"
start temp.vbs
set /p filename=What is your filename going to be ?:
echo.
echo.
echo set voice = Wscript.CreateObject("SAPI.spVoice") > "temp.vbs"
echo voice.speak "What type of file is it going to be" >> "temp.vbs"
start temp.vbs
set /p ext=What type of file is it going to be ?:
echo.
echo.
set n=0
echo set voice = Wscript.CreateObject("SAPI.spVoice") > "temp.vbs"
echo voice.speak "Enter your content and type quit when your finished" >> "temp.vbs"
set addr=%1
:loop
if %n%==0 ( echo Enter your content 
start temp.vbs
)
set n=1
set /p _text=
echo %_text% >> %addr%\%filename%.%ext%
if !_text!==quit goto :end
goto :loop
:end