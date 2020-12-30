rem Check ARM Step 1
rem git push -u armcheck master
@echo off
for /f "tokens=2 delims=:" %%a in ('powershell -Command Get-Host ^| findstr /c:Version') do (echo %%a)

if exist "C:\Windows\Microsoft.NET\Framework\v4*" echo Framework_V4_32_exist

timeout 15