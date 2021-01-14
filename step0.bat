@echo off
    for /f "tokens=2 delims=:" %%a in ('powershell -Command Get-Host ^| findstr /c:Version') do (echo pshell Version %%a)
    if exist "C:\Windows\Microsoft.NET\Framework\v4*" echo Framework_V4_32_exist
    netsh http add urlacl url=http://+:9000/ user=Everyone
    netsh http add urlacl url=http://+:9000/ user=все
    echo %COMPUTERNAME% > C:\tmp\%COMPUTERNAME%_result.txt
    echo ipconfig >> C:\tmp\%COMPUTERNAME%_result.txt
    tcping -n 10 msk-fcc-vpn.tech.nis-glonass.ru 80 >> C:\tmp\%COMPUTERNAME%_result.txt
    tcping -n 10 msk-fcc-vpn.tech.nis-glonass.ru 443 >> C:\tmp\%COMPUTERNAME%_result.txt
    tcping -n 10 msk-fcc-vpn.tech.nis-glonass.ru 5060 >> C:\tmp\%COMPUTERNAME%_result.txt
start powershell -noexit -executionpolicy bypass -command "C:step1.ps1"
timeout 10