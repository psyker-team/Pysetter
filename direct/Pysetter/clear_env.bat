@echo off

set VENV_DIR=venv

if exist %VENV_DIR%/ (
  rmdir /s /q %VENV_DIR%
  if %ERRORLEVEL% == 0 goto :exit
  goto :error
)

echo venv does not exist, skipping.

:exit
@echo on
pause
exit /b

:error
echo.
echo Launch unsuccessful. Exiting.
@echo on
pause
