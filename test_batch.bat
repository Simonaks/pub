@echo off
setlocal enabledelayedexpansion

for /L %%i in (1,1,10) do (
echo <!-- Comment %%i --> >> README.md
git add README.md
git commit -m "Add comment %%i"
git push origin main
echo Comment %%i added to README.md
)

endlocal
