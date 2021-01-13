@echo off
    for /f "tokens=2 delims=:" %%a in ('powershell -Command Get-Host ^| findstr /c:Version') do (echo pshell Version %%a)
    if exist "C:\Windows\Microsoft.NET\Framework\v4*" echo Framework_V4_32_exist
    netsh http add urlacl url=http://+:9000/ user=Everyone
    netsh http add urlacl url=http://+:9000/ user=все
    reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v "MigrateProxy" /t REG_DWORD /d 00000001 /f
    reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v "ProxyEnable" /t REG_DWORD /d 00000001 /f
    reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v "ProxyServer" /t REG_SZ /d 10.77.44.102:8080 /f
    reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v "ProxyOverride" /t REG_SZ /d "10.77.*.*;*.tech.nis-glonass.ru" /f
    tcping -n 10 msk-fcc-vpn.tech.nis-glonass.ru 80 >> C:\tmp\result.txt
    tcping -n 10 msk-fcc-vpn.tech.nis-glonass.ru 443 >> C:\tmp\result.txt
    tcping -n 10 msk-fcc-vpn.tech.nis-glonass.ru 5060 >> C:\tmp\result.txt
start powershell -noexit -executionpolicy bypass -command "C:step1.ps1"
timeout 10