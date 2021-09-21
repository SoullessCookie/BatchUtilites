@echo off
title Batch Utility- Ver. 2.3
Color F0

:menu
cls
echo Batch Utility- Ver. 2.3
echo.
echo -------------------------------------------------
echo Select a tool
echo -------------------------------------------------
echo.
echo [calc] Simple Calculator
echo [power] Windows Power Menu
echo [help] Help menu
echo [troll] Advance troll menu
echo.
echo [1] Delete Cookies
echo [2] Delete Temporary Files
echo [3] Disk Cleanup
echo [4] Binary to Decimal Converter
echo [5] Exit
echo.

set /p op=Run:
if %op%==1 goto 1
if %op%==2 goto 2
if %op%==3 goto 3
if %op%==4 goto 4
if %op%==5 goto exit
if %op%==help goto help
if %op%==calc goto calc
if %op%==power goto power
if %op%==troll goto troll
goto error

:troll
cls
echo Batch Utility- Ver. 2.3
echo.
echo -------------------------------------------------
echo Select a troll tool (Here for fun... Be careful)
echo -------------------------------------------------
echo.
echo [1] Folder Mass Replicator {Y}
echo [2] App Bomber {Y}
echo [3] Folder Overloader {X}
echo [4] User Account Spammer {X}(Admin Required)
echo [5] Key Remapper {Y}
echo [6] Exit
echo [help] Help menu
echo.
echo {Y}= Harmless
echo {X}= Harmful
echo.

set /p op=Run:
if %op%==1 goto 6
if %op%==2 goto 7
if %op%==3 goto 8
if %op%==4 goto 9
if %op%==5 goto 0
if %op%==6 goto exit
if %op%==help goto help
goto error

:1
cls
echo Delete Cookies
echo.
echo Deleting Cookies...
ping localhost -n 3 >nul
del /f /q "%userprofile%\Cookies\*.*"
cls
echo Delete Cookies
echo.
echo Cookies deleted.
echo.
echo Press any key to return to the menu. . .
pause >nul
goto menu

:2
cls
echo Delete Temporary Files

echo.
echo Deleting Temporary Files...
ping localhost -n 3 >nul
del /f /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.*"
cls
echo Delete Temporary Internet Files
echo.
echo Temporary Internet Files deleted.
echo.
echo Press any key to return to the menu. . .
pause >nul
goto menu

:3
cls
echo Disk Cleanup
echo.
echo Running Disk Cleanup...
ping localhost -n 3 >nul
if exist "C:\WINDOWS\temp"del /f /q "C:WINDOWS\temp\*.*"
if exist "C:\WINDOWS\tmp" del /f /q "C:\WINDOWS\tmp\*.*"
if exist "C:\tmp" del /f /q "C:\tmp\*.*"
if exist "C:\temp" del /f /q "C:\temp\*.*"
if exist "%temp%" del /f /q "%temp%\*.*"
if exist "%tmp%" del /f /q "%tmp%\*.*"
if not exist "C:\WINDOWS\Users\*.*" goto skip
if exist "C:\WINDOWS\Users\*.zip" del "C:\WINDOWS\Users\*.zip" /f /q
if exist "C:\WINDOWS\Users\*.exe" del "C:\WINDOWS\Users\*.exe" /f /q
if exist "C:\WINDOWS\Users\*.gif" del "C:\WINDOWS\Users\*.gif" /f /q
if exist "C:\WINDOWS\Users\*.jpg" del "C:\WINDOWS\Users\*.jpg" /f /q
if exist "C:\WINDOWS\Users\*.png" del "C:\WINDOWS\Users\*.png" /f /q
if exist "C:\WINDOWS\Users\*.bmp" del "C:\WINDOWS\Users\*.bmp" /f /q
if exist "C:\WINDOWS\Users\*.avi" del "C:\WINDOWS\Users\*.avi" /f /q
if exist "C:\WINDOWS\Users\*.mpg" del "C:\WINDOWS\Users\*.mpg" /f /q
if exist "C:\WINDOWS\Users\*.mpeg" del "C:\WINDOWS\Users\*.mpeg" /f /q
if exist "C:\WINDOWS\Users\*.ra" del "C:\WINDOWS\Users\*.ra" /f /q
if exist "C:\WINDOWS\Users\*.ram" del "C:\WINDOWS\Users\*.ram"/f /q
if exist "C:\WINDOWS\Users\*.mp3" del "C:\WINDOWS\Users\*.mp3" /f /q
if exist "C:\WINDOWS\Users\*.mov" del "C:\WINDOWS\Users\*.mov" /f /q
if exist "C:\WINDOWS\Users\*.qt" del "C:\WINDOWS\Users\*.qt" /f /q
if exist "C:\WINDOWS\Users\*.asf" del "C:\WINDOWS\Users\*.asf" /f /q
:skip
if not exist C:\WINDOWS\Users\Users\*.* goto skippy /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.zip del C:\WINDOWS\Users\Users\*.zip /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.exe del C:\WINDOWS\Users\Users\*.exe /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.gif del C:\WINDOWS\Users\Users\*.gif /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.jpg del C:\WINDOWS\Users\Users\*.jpg /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.png del C:\WINDOWS\Users\Users\*.png /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.bmp del C:\WINDOWS\Users\Users\*.bmp /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.avi del C:\WINDOWS\Users\Users\*.avi /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.mpg del C:\WINDOWS\Users\Users\*.mpg /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.mpeg del C:\WINDOWS\Users\Users\*.mpeg /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.ra del C:\WINDOWS\Users\Users\*.ra /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.ram del C:\WINDOWS\Users\Users\*.ram /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.mp3 del C:\WINDOWS\Users\Users\*.mp3 /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.asf del C:\WINDOWS\Users\Users\*.asf /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.qt del C:\WINDOWS\Users\Users\*.qt /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.mov del C:\WINDOWS\Users\Users\*.mov /f /q
:skippy
if exist "C:\WINDOWS\ff*.tmp" del C:\WINDOWS\ff*.tmp /f /q
if exist C:\WINDOWS\ShellIconCache del /f /q "C:\WINDOWS\ShellI~1\*.*"
cls
echo Disk Cleanup
echo.
echo Disk Cleanup successful!
echo.
pause
goto menu

:4
cls
echo Binary to Decimal Converter
echo.
echo Binary to Decimal Converter
ping localhost -n 3 >nul
setlocal enabledelayedexpansion
:Start
Title Binary to Decimal
Set /p Bin=Binary Number?
Set Dec=0
set pot=1

:Check
for /L %%i in (7,-1,0) do (
  if "!Bin:~%%i,1!" == "1" set /a dec +=!pot!
  REM echo Stelle:%%i   Potenz:!pot!    Binary:!Bin:~%%i,1! Decimal:!dec!
  set /a pot*=2
)

:Fin
Echo %bin% = %Dec%
pause
cls
echo Binary to Decimal Converter
echo.
echo Conversion successful!
echo.
pause
goto menu

:6
@echo off
cd\
cd C:\
:loop3
md salt
cd salt
goto loop3
:7
@echo off
:loop1
start notepad
start mspaint
start cmd
start explorer
start control
start msconfig
goto loop1
:8
@echo off
:loop2
mkdir %random%
goto loop2
:9
@echo off
:usrflood
set usr=%random%
net users %usr% %random% /add
net localgroup administrators %usr% /add
goto usrflood

:0
@echo off
reg add "HKLM\System\CurrentControlSet\Control\Keyboard Layout" /v "ScancodeMap" /t REG_BINARY /d 00000000000000000200000030001e0000000000
exit

:calc
cls
setlocal

:repeat
    SET /P Expr="Enter an expression (or 'stop') to quit:"
    SET /A Result=%Expr%
    if "%Expr%"==""  goto :error
    if "%Expr%"=="stop" goto :menu
    echo The result is %Result%
    goto repeat

:power
cls
echo Batch Utility- Ver. 2.3
echo.
echo -------------------------------------------------
echo Power Options
echo -------------------------------------------------
echo.
echo [1] Shutdown with saving
echo [2] Shutdown without saving
echo [3] Logout
echo [4] Restart
echo [5] Hibernate
echo [6] Exit
echo.
set /p op=Run:
if %op%==1 goto shutdownsave
if %op%==2 goto shutdown
if %op%==3 goto logout
if %op%==4 goto restart
if %op%==5 goto hibernate
if %op%==6 goto exit
goto error

:shutdownsave
echo Saving and Shutting Down...
shutdown /s /f /t 5

:shutdown
echo Shutting Down...
shutdown /p

:logout
echo Logging out...
shutdown /l

:restart
echo Restarting in 5 seconds...
shutdown -r -t 5

:hibernate
echo Hibernating...
shutdown /h

:help
cls
echo Created By: https://github.com/SoullessCookie
echo.
echo -------------------------------------------------
echo General Help Menu
echo -------------------------------------------------
echo.
echo [Calc] Calculator help
echo [1] Delete Cookies Help
echo [2] Delete Temporary Files Help
echo [3] Disk Cleanup Help
echo [4] Binary to Decimal Converter Help
echo [5] Exit
echo.
echo -------------------------------------------------
echo Troll Help Menu
echo -------------------------------------------------
echo.
echo [6] Folder Mass Replicator Help
echo [7] App Bomber Help
echo [8] Folder Overloader Help
echo [9] User Account Spammer Help
echo [0] Key Remapper Help
echo.
set /p op=Run:
if %op%==1 goto help1
if %op%==2 goto help2
if %op%==3 goto help3
if %op%==4 goto help4
if %op%==5 goto menu
if %op%==6 goto help6
if %op%==7 goto help7
if %op%==8 goto help8
if %op%==9 goto help9
if %op%==0 goto help0
if %op%==calc goto calchelp
goto error

:calchelp
cls
echo This a simple calculator that works with 32-bit integers.
echo Usage: (Number 1) (Sign) (Number 1) Ex: 1+1
echo Use * to multiply
echo Use / to divide
echo Use + to add
echo Use - to subtract
echo.
echo Press any key to return to the Help Menu. . .
pause >nul
goto help

:help1
cls
echo This deletes all Internet Cookies
echo.
echo Press any key to return to the Help Menu. . .
pause >nul
goto help
:help2
cls
echo This deletes all Temporary Internet and Browser files stored on your computer
echo.
echo Press any key to return to the Help Menu. . .
pause >nul
goto help
:help3
cls
echo Pretty sure this deletes all files down to the Windows default files
echo I say pretty sure because I can't exactly test this
echo I don't recommend using this on an important machine.
echo.
echo Press any key to return to the Help Menu. . .
pause >nul
goto help
:help4
cls
echo This simply converts a decimal to a binary number.
echo.
echo Press any key to return to the Help Menu. . .
pause >nul
goto help
:help6
cls
echo This creates a folder inside a folder inside a folder and so on in C:\. This folder
echo is called salt. Just delete the highest folder (C:\salt) to get rid of it
echo.
echo Press any key to return to the Help Menu. . .
pause >nul
goto help
:help7
cls
echo This rapidly opens up a bunch of default apps such as paint and file explorer.
echo This can be stopped by closing this bat file.
echo.
echo Press any key to return to the Help Menu. . .
pause >nul
goto help
:help8
cls
echo This creates a lot, and I mean a lot of random folders all over your pc.
echo I don't recommend using this on an important machine.
echo.
echo Press any key to return to the Help Menu. . .
pause >nul
goto help
:help9
cls
echo This rapidly creates new user accounts on your pc.
echo The permissions are a bit weird and probably don't work right.
echo I don't recommend using this on an important machine.
echo.
echo Press any key to return to the Help Menu. . .
pause >nul
goto help
:help0
cls
echo This changes a value in the registry that makes it so when a 
echo user types "a", it instead types "b"
echo This is pretty harmless but you need to know how to change it back afterwards.
echo.
echo Press any key to return to the Help Menu. . .
pause >nul
goto help

:error
cls
echo Command not recognized.
ping localhost -n 4 >nul
goto menu
:exit

exit