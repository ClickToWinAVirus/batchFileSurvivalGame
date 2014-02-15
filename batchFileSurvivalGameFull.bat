@echo off
::Color changes throughout the game

::===Stats Settings==============================================
set progress=0
set weapon=sword
set armor=none
set health=10
set skill=0
set money=0
set xp=0
::===============================================================




::===BEGINNING===============================================================
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
color 1f
echo Game Starting
pause
cls
goto StartGame
)
goto Intro_Stats


::===StartGame==================================================================
:StartGame
color 1f
cls
echo A new list of wanted men are handed to you.  Your goal:
echo Kill as many as you can.  
echo.
pause
cls
got L1

::===Level 1=====================================================================
:L1
cls
echo You approach the first man on the list.  He is just a common
echo theif, only carrying a small knife.  
echo.
echo Click any key to enter combat...
progress=1

:L1_PB1
pause>null
cls
echo Do you want to view your stats?
set/p S1=
if %S1%==y goto Stats
if %S1%==n goto L1_B1
goto L1_PB1

:L1_B1
cls
progress=1.1
echo You pull out your sword, and the thief pulls out his knife. 
goto Damage

:L1_B1_D
cls
if %damage_minor%=0 goto L1_B1_E
health = health - damage_minor
echo You manage to kill the enemy, but not before the thief stabs you.
echo You took %damage_minor% damage.
echo Current Health:  %health%
echo.
pause
cls
goto Reward
:L1_R1
echo You head back to the guard tower that you got the wanted list, and 
echo bring proof of you kill.  You are rewarded with %reward_minor% coins.
money = money + reward_minor
echo Money:  %money%
echo.
pause
cls






















::===Stats==========================================================
:Stats
cls
color a
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
color 1f
echo Game Starting
pause
cls
goto StartGame
)
if %progress%==1 goto L1_B1
if %progress%==
if %progress%==
if %progress%==
if %progress%==
if %progress%==
if %progress%==
if %progress%==
::===============================================================


::===Reward Settings=============================================
:Reward
set reward_minor=%random%%%11 50%+1
set reward_average=%random%%%16 75%+1
set reward_major=%random%%%36 150%+1
set reward_boss=%random%%%350 700%+1

if %progress%==1.2 goto L1_R1
if %progress%==
if %progress%==
if %progress%==
if %progress%==
if %progress%==
if %progress%==
if %progress%==
::===============================================================



::===Damage Settings=============================================
:Damage
set damage_decision_easy=%random%%%1 8%
set damage_decision_normal=%random%%%1 5%
set damage_decision_hard=&random%%%1 3%
set damage_minor=%random%%%1 3%
set damage_normal=%random%%%1 5%
set damage_major=%random%%%1 9%

if %progress%==1.1 goto L1_B1_D
if %progress%==
if %progress%==
if %progress%==
if %progress%==
if %progress%==
if %progress%==
if %progress%==
::===============================================================

