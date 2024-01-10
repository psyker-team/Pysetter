@echo off

set VENV_DIR=%~dp0%venv
set PYTHON="%VENV_DIR%\Scripts\Python.exe"

:: Put your codes here

%PYTHON% env_test.py

@echo on
pause
