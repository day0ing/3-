@echo off
cd /d "%~dp0"
py -m pip install -r requirements.txt
py -m playwright install chromium
py crawler.py
py -m http.server 8000
pause
