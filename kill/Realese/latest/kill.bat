@echo off
::init
set menu=0
::start
:start
cls
echo KillVer 0.0.1
echo.
echo this is available to kill:
echo.
echo    (1) STEAM
echo.
echo.




set /p menu="Number>>>"
if %menu% == 1 Goto STEAM 







goto start

:STEAM
taskkill /IM steam.exe /f
Goto END



:END
@echo on