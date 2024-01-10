@echo off

set VENV_DIR=venv
set PYTHON="%~dp0%VENV_DIR%/python"

if exist %VENV_DIR%/ (
  %PYTHON% -c "" >tmp/stdout.txt 2>tmp/stderr.txt
  if %ERRORLEVEL% == 0 goto :env_test
  echo Couldn't launch python
  goto :error

  :env_test
  %PYTHON% env_test.py
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
