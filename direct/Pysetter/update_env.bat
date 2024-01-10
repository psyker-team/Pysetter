@echo off

set VENV_DIR=venv
set PYTHON="%~dp0%VENV_DIR%/python"

if exist %VENV_DIR%/ (
  %PYTHON% -c "" >tmp/stdout.txt 2>tmp/stderr.txt
  if %ERRORLEVEL% == 0 goto :update_env
  echo Couldn't launch python
  goto :error

  :update_env
  %PYTHON% update_env.py
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
