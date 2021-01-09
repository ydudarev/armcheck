@echo off
    runas /user:administrator cmd
        start powershell -noexit -file "С:\tmp\pol.ps1"
        start powershell -noexit -file "С:\tmp\step2.ps1"
    timeout 10