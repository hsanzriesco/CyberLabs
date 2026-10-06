@echo off
title CyberLab Academy
cd /d "%~dp0"
where py >nul 2>&1
if %errorlevel%==0 (
    start "" http://localhost:8000/
    py -m http.server 8000
    goto :eof
)
where python >nul 2>&1
if %errorlevel%==0 (
    start "" http://localhost:8000/
    python -m http.server 8000
    goto :eof
)
echo.
echo No se encontro Python.
echo Instala Python y vuelve a ejecutar este archivo.
echo.
pause
