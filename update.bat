cd D:\CSC2\Obsidian-wiki-fix\src
python controller.py
cd D:\quartz

for /F "tokens=2" %%i in ('date /t') do set mydate=%%i
set mytime=%time%

git add .
git commit -m "automatic commit %mydate% : %mytime%"
git push