@echo off
color a


::===============================================================
set progress=0
set weapon=sword
set armor=none
set health=10
set skill=none
set money=0
set xp=0
::===============================================================




::===Beginning=====================================================
:Beginning
cls
echo This is a Survival Game where you will die many times.
pause
cls
goto Intro_Stats

:Intro_Stats
cls
echo Before your turn to attack, you can type 'y' when asked to view
echo stats and you can see what your current stats are.  If you do no
echo want to view your stats, enter 'n' when asked.
echo.
pause
cls
set/p T1= Try typing it now:  
if %T1%==y goto Stats
if %T1%==n (
cls
echo Game Starting
pause
cls
)
goto StartGame
goto Intro_Stats


::===Stats============================================================
:Stats
cls
echo  Weapon:  %weapon%
echo  Armor:   %armor%

echo  Health:  %health%
echo  Skill:   %skill%

echo  Money:   %money%
echo  XP:      %xp%
echo.
pause
cls


if %progress%==0 (
echo Game Starting
pause
cls
goto StartGame
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
echo A new list of wanted men are handed to you.  Your goal:
echo Kill as many as you can.  
echo.
pause
cls
got L1

::===Level 1===========================================================
:L1
cls
echo You approach the first man on the list.  He is just a common
echo theif, only carrying a small knife.  
echo.
echo Click any key to enter combat...
pause>null
cls


