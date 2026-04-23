@echo off
title FitHub Launcher

echo ========================================
echo  FitHub - запуск бэкенда и фронтенда
echo ========================================

:: Запуск бэкенда в отдельном окне
start "FitHub Backend" cmd /k "cd /d "%~dp0backend" && venv\Scripts\activate && uvicorn main:app --reload"

:: Небольшая пауза чтобы бэкенд стартовал
timeout /t 2 /nobreak > nul

:: Запуск фронтенда в отдельном окне
start "FitHub Frontend" cmd /k "cd /d "%~dp0frontend" && npm run dev"

echo.
echo Открываю браузер через 5 секунд...
timeout /t 5 /nobreak > nul
start http://localhost:5173

echo.
echo Готово! Оба сервера запущены.
pause
