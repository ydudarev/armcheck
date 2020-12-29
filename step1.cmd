rem Check ARM Step 1
rem git push -u armcheck master
@echo off
for /f "tokens=2 delims=:" %%a in ('powershell -Command Get-Host ^| findstr /c:Version') do (echo %%a)
timeout 15