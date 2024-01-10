@echo off

set VENV_DIR=%~dp0%\Pysetter\venv
set PYTHON="%VENV_DIR%\Scripts\Python.exe"

:: Switch to the project

cd project\hello_pytorch

:: Put your codes here

%PYTHON% main.py

@echo on
pause
