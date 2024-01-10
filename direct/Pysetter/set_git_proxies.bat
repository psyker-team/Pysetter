@echo off

set PYTHON_BASE=Python310
set PYTHON_BASE_FULL="%~dp0%PYTHON_BASE%/python"

mkdir tmp 2>NUL

echo Setting git proxy...

git config --global --unset http.proxy >tmp/stdout.txt 2>tmp/stderr.txt

:exit
@echo on
pause
