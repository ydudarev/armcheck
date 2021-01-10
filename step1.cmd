@echo off
    reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PowerShell\1\ShellIds\Microsoft.PowerShell" /v "ExecutionPolicy" /t REG_SZ /d "Restricted" /f
        start powershell -noexit -file "С:\tmp\step2.ps1"
    timeout 10