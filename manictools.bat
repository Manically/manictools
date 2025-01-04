@echo off
title Manic Windows Setup Tool
chcp 65001 >nul
mkdir %tmp%\manic
cls
cd %tmp%\manic
color 5

:start
title Manic Windows Setup Tool
call :banner

:menu
for /f %%A in ('"prompt $H &echo on &for %%B in (1) do rem"') do set BS=%%A
echo.
echo.
echo [38;2;255;255;0m        ╔═(1) Install .NET and JRE Runtimes (Recommended)[0m  
echo [38;2;255;255;0m        ║[0m  
echo [38;2;255;255;0m        ╠══(2) Install Gaming Apps (Steam, Discord)[0m  
echo [38;2;255;255;0m        ║[0m  
echo [38;2;255;255;0m        ╠═══(3) Install Useful Apps (Chrome, WinRAR, etc)[0m  
echo [38;2;255;255;0m        ║[0m  
echo [38;2;255;255;0m        ╠════(4) Install LibreOffice and Paint.NET[0m  
echo [38;2;255;255;0m        ║[0m  
echo [38;2;255;255;0m        ╠═════(5) Install Development Stuff (JDKs, Python, Eclipse, VSCode, etc)[0m  
echo [38;2;255;255;0m        ║[0m  
echo [38;2;255;255;0m        ╠══════(6) Activate Windows (Massgrave)[0m  
echo [38;2;255;255;0m        ║[0m 
echo [38;2;255;255;0m        ╠═══════(7) Titus WinUtils[0m  
echo [38;2;255;255;0m        ║[0m 
echo [38;2;255;255;0m        ╚╦═══════(8) Exit[0m  
echo [38;2;255;255;0m         ║[0m  
set /p input=.%BS% [38;2;255;255;0m        ╚══════^>[0m  
if /I %input% EQU 1 powershell -Command "Invoke-WebRequest https://github.com/ewanj000/ninites/raw/refs/heads/main/runtimes.exe -OutFile runtimes.exe" & start runtimes.exe
if /I %input% EQU 2 powershell -Command "Invoke-WebRequest https://github.com/ewanj000/ninites/raw/refs/heads/main/gaming.exe -OutFile gaming.exe" & start gaming.exe
if /I %input% EQU 3 powershell -Command "Invoke-WebRequest https://github.com/ewanj000/ninites/raw/refs/heads/main/useful.exe -OutFile useful.exe" & start useful.exe
if /I %input% EQU 4 powershell -Command "Invoke-WebRequest https://github.com/ewanj000/ninites/raw/refs/heads/main/office.exe -OutFile office.exe" & start office.exe
if /I %input% EQU 5 powershell -Command "Invoke-WebRequest https://github.com/ewanj000/ninites/raw/refs/heads/main/dev.exe -OutFile dev.exe" & start dev.exe
if /I %input% EQU 6 powershell -Command "irm https://get.activated.win/ | iex"
if /I %input% EQU 7 powershell -Command "iwr -useb https://christitus.com/win | iex"
if /I %input% EQU 8 del %tmp%\manic /Q & exit
cls
goto start

:banner
echo.
echo.
echo                     [38;2;255;0;0m███████╗███████╗████████╗██╗   ██╗██████╗     ████████╗ ██████╗  ██████╗ ██╗  [0m     
echo                     [38;2;255;51;0m██╔════╝██╔════╝╚══██╔══╝██║   ██║██╔══██╗    ╚══██╔══╝██╔═══██╗██╔═══██╗██║  [0m
echo                     [38;2;255;102;0m███████╗█████╗     ██║   ██║   ██║██████╔╝       ██║   ██║   ██║██║   ██║██║    [0m 
echo                     [38;2;255;153;0m╚════██║██╔══╝     ██║   ██║   ██║██╔═══╝        ██║   ██║   ██║██║   ██║██║[0m
echo                     [38;2;255;204;0m███████║███████╗   ██║   ╚██████╔╝██║            ██║   ╚██████╔╝╚██████╔╝███████╗[0m
echo                     [38;2;255;255;0m╚══════╝╚══════╝   ╚═╝    ╚═════╝ ╚═╝            ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝[0m
echo.
                                                                                 

