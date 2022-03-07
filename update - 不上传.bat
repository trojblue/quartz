@echo off

cd D:\CSC2\Obsidian-wiki-fix\src
python app.py
cd D:\quartz

for /F "tokens=2" %%i in ('date /t') do set mydate=%%i
set mytime=%time%

@REM git add .
@REM git commit -m "content update - %mydate% : %mytime%"
@REM git push

@REM echo.
@REM echo.

@REM echo =============================
@REM echo        upload done! 
@REM echo =============================
@REM pause