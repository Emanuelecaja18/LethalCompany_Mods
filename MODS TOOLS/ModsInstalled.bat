@echo off

set "file=../mods.yml"

for /f "tokens=* delims=" %%a in (%file%) do (
    echo %%a|find "displayName:" >nul
	if not errorlevel 1 (echo %%a)
)

pause