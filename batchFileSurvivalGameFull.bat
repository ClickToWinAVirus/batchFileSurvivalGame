@echo off
color 1f


::===============================================================
set progress=0
set weapon=sword
set armor=none
set money=0
set skill=none
set xp=0
::===============================================================




::===Beginning=====================================================
:Beginning
cls
echo This is a Survival Game where you will die many, many times.
pause
cls
goto Intro_Stats

:Intro_Stats
cls
echo  Before your turn to attack, you can type ‘stats’ and enter it to 
set/p T1  see what your current stats are.  Try typing it now:  
if %T1%==stats goto stats
goto Intro_Stats


::===Stats============================================================

cls
echo  Weapon:  %weapon%
echo  Armor:  %armor%
echo  Money:  %money%
echo  Skill:  %skill%
echo  XP:  %xp%
echo.
pause
cls


if %progress%==0
 (
cls
echo Starting Game…
pause
cls
goto GameStart
)
if %progress%==1 goto L1
if %progress%==2 goto L2
if %progress%==3 goto L3
if %progress%==4 goto L4
if %progress%==5 goto L5
if %progress%==6 goto L6
if %progress%==7 goto L7
if %progress%==8 goto L8


::===StartGame========================================================

:StartGame
cls
echo  A new list of wanted men are handed to you.  
pause
