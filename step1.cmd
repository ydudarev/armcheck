rem Check ARM Step 1
rem git push -u armcheck master
@echo off
    $PSVersionTable.PSVersion
    start powershell -noexit -file "С:\tmp\step2.ps1"
    timeout 15