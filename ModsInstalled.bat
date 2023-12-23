@echo off
setlocal enabledelayedexpansion

set "file=mods.yml"

for /f "tokens=* delims=" %%a in (%file%) do (
    set "line=%%a"
    echo %%a|find "displayName:" >nul
	if not errorlevel 1 (echo %%a)
)

pause