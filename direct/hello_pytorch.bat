@echo off

set PYTHON="%~dp0%Pysetter/venv/python"

cd Pysetter
%PYTHON% update_env.py
if %ERRORLEVEL% == 0 goto :run
goto :error

:run
cd ../project/hello_pytorch
%PYTHON% main.py
pause
exit /b

:error
echo.
echo Launch unsuccessful. Exiting.
pause
