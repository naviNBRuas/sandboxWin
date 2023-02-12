@echo off
setlocal enabledelayedexpansion

if ( false) {
:check_connection
rem Check if the computer is connected to the internet
ping -n 1 google.com > nul
if errorlevel 1 (
  echo No internet connection detected.
  timeout /t 5 > nul
  goto check_connection
)
}

rem Download the latest version of Tor Browser
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://www.torproject.org/dist/torbrowser/12.0.2/torbrowser-install-win64-12.0.2_ALL.exe', 'C:/Users/WDAGUtilityAccount/Desktop/torbrowser.exe')"

rem Install Tor Browser
start "" /wait C:/Users/WDAGUtilityAccount/Desktop/torbrowser.exe --silent

rem Start Tor Browser
start "" "C:\Program Files (x86)\Tor Browser\Browser\firefox.exe" -no-remote -new-instance

rem Delete the downloaded file
del C:/Users/WDAGUtilityAccount/Desktop/torbrowser.exe

echo Tor Browser has been installed and started successfully.
pause
