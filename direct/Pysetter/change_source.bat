@echo off

set PYTHON_BASE=Python310
set PYTHON_BASE_FULL="%~dp0%PYTHON_BASE%/python"

mkdir tmp 2>NUL

%PYTHON_BASE_FULL% -c "" >tmp/stdout.txt 2>tmp/stderr.txt
if %ERRORLEVEL% == 0 goto :change_source
echo Couldn't launch python
goto :exit

:change_source
%PYTHON_BASE_FULL% -m pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
if %ERRORLEVEL% == 0 goto :exit
goto :error

:exit
@echo on
pause
exit /b

:error
echo.
echo Launch unsuccessful. Exiting.
@echo on
pause
