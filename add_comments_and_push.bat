@echo off
setlocal enabledelayedexpansion

REM Add comments to README.md
for /L %%i in (1,1,10) do (
  powershell -Command "Add-Content -Path README.md -Value '<!-- Comment %%i -->'"
  echo Comment %%i added to README.md
)

REM Git operations
git add README.md
git commit -m "Add comments to README.md"
git push origin main

endlocal
