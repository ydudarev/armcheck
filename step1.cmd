rem Check ARM Step 1
rem git push -u armcheck master
@echo off
powershell
    $PSVersionTable.PSVersion
TNC msk-fcc-vpn.tech.nis-glonass.ru -Port 80 -InformationLevel Quiet
TNC msk-fcc-vpn.tech.nis-glonass.ru -Port 443 -InformationLevel Quiet
TNC msk-fcc-vpn.tech.nis-glonass.ru -Port 5060 -InformationLevel Quiet
    timeout 15