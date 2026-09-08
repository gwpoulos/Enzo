@echo off
rem Serves the Enzo folder over HTTP so index.html can load comic.json.
rem Double-click to start. Close this window to stop the server.
cd /d "%~dp0"
set PORT=8799
echo Starting local server on http://localhost:%PORT%/ ...
echo Leave this window open while reading. Close it to stop.
timeout /t 2 >nul
start "" "http://localhost:%PORT%/"
where python >nul 2>nul
if %errorlevel%==0 (
  python -m http.server %PORT%
) else (
  py -m http.server %PORT%
)