@echo off
cd D:\CSC2\Obsidian-wiki-fix\src
python app.py
cd D:\quartz

for /F "tokens=2" %%i in ('date /t') do set mydate=%%i
set mytime=%time%

git add .
git commit -m "automatic commit %mydate% : %mytime%"
git push


echo "自动上传完成! 等待10秒退出"
choice /d y /t 10 > nul
echo "溜了溜了.."