@echo off
set "file=..\mods.yml"
setlocal enabledelayedexpansion


for /f "delims=" %%a in ('findstr "displayName: description:" %file%') do (
    set col=[42m
    echo %%a|find "description" >nul
    if not errorlevel 1 (
	set col=
    )

    set "line=%%a"
    set "line=!line:displayName:=!"
    set "line=!line:description:=       !"
    echo !col!!line![40m
    if "!col!"=="" echo:

)

endlocal

pause