TNC msk-fcc-vpn.tech.nis-glonass.ru -Port 80 -InformationLevel "Detailed" | Out-File -append -FilePath c:\tmp\$($env:computername)_result.txt
TNC msk-fcc-vpn.tech.nis-glonass.ru -Port 5060 -InformationLevel "Detailed" | Out-File -append -FilePath c:\tmp\$($env:computername)_result.txt
$host.SetShouldExit(1)