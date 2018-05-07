@echo off
title CPU Rename v1.0 By CONSOLEYT7
cd package

:cpuname
cls
set /p cpuname=Type CPU Name To Rename : 
goto file1

:file1
cls
if exist cpu_rename_reg.reg goto file0
if not exist cpu_rename_reg.reg goto file2

:file2
cls
echo Windows Registry Editor Version 5.00 >>cpu_rename_reg.reg
echo. >>cpu_rename_reg.reg
echo [HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\CentralProcessor\0] >>cpu_rename_reg.reg
echo "ProcessorNameString"="%cpuname%" >>cpu_rename_reg.reg
goto regstart

:file0
cls
cls >>cpu_rename_reg.reg
goto file2

:regstart
cls
start cpu_rename_reg.reg
cls
echo Select "OK" To Rename CPU Successfully
echo.
echo Thanks For Using Our Service! - InterBot Development Team
echo.
echo.
echo Press Any Key To Continue...
pause >nul