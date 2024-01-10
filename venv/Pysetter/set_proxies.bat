@echo off
git config --global http.proxy "http://127.0.0.1:7890"
pip config set global.proxy http://127.0.0.1:7890
@echo on
pause
