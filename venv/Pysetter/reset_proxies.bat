@echo off
git config --global --unset http.proxy
pip config unset global.proxy
@echo on
pause
