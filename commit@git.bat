@echo off
title Commit files
set nc=1
set date=%~1
set month=%~2
set year=%~3
set gitpath=%~4
set currentpath=%CD%
cd %gitpath%
:loop
git commit --amend --no-edit --date="%date% %month% 20:00:00 %year% -0600"
git config credential.helper store
git push origin master --force
if %nc%==5 goto :end
set /a nc=nc+1
goto :loop
:end
cd %currentpath%