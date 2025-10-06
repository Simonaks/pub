@echo off
setlocal enabledelayedexpansion

for /L %%i in (1,1,10) do (
  echo <!-- Comment %%i --> >> index.html
  git add index.html
  git commit -m "Add comment %%i"
  git push origin main
  echo Comment %%i added to index.html
)

endlocal
