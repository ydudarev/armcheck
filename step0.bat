if exist "C:\Windows\Microsoft.NET\Framework\v4*" echo Framework_V4_32_exist
if exist "C:\Windows\Microsoft.NET\Framework64\v4*" echo Framework_V4_64_exist
netsh http add urlacl url=http://+:9000/ user=Everyone
netsh http add urlacl url=http://+:9000/ user=все