@echo off

:startup
@echo off
set "elevator=%temp%\%~n0.elevate.js"
net session >nul 2>&1 && goto :MAIN
 rem Wichtig!!!!  set -Angaben immer in Anführungszeichen   !!! ...Steuerzeichen enthalten
 rem nach den "=" die Befehlszeile , welche Aufgerufen werden soll.
set "elevationCmdLine=cd /d "%cd%"&call "%~f0" %*"
 rem & durch maskiertes ^& ersetzen  
set "elevationCmdLine=%elevationCmdLine:&=^&%"
 rem da in Javascript ein einzelner Backslash als Steuerzeichen (Escapecharakter) gewertet wird, alle Backslashes  verdoppeln
set "elevationCmdLine=%elevationCmdLine:\=\\%"
 rem das geht nur mit JavaSript in einer  externen Datei. Nur so lassen sich zwei verschiedene Quotes  verschachteln!
 rem die Carrets "^" vor  den  Klammern sind extrem wichtig (Maskierung).
echo  var objShell = new ActiveXObject^("shell.application"^); >"%elevator%"
echo objShell.ShellExecute^('cmd','/c %elevationCmdLine% ' ,'','runas',1^); >>"%elevator%"
cscript //nologo "%elevator%"
exit /b




:MAIN


echo the downloader downloads a file and move it to System32
echo when you accept it press any key 3 times
echo 3
pause>nul
echo 2
pause>nul
echo 1
pause>nul
mkdir tmp
curl --header "Authorization: Basic eDpLYWkzMDExMDBA" https://dl.edgegate.me/dl/blazzycrafter/autoUPX/upx.exe --output tmp/upx.exe
cd tmp
move upx.exe %windir%/System32/upx.exe
cd..
rmdir /S /Q tmp
