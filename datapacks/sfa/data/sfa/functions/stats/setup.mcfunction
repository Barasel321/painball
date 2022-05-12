####ONE TIME FUNCTION FOR SETUP IN NEW WORLD,
####DO NOT USE IF WORLD IS FUNCTIONAL

#scoreboard players set @e[type=marker,tag=pedestal] constant -1
#execute as @e[type=marker,tag=pedestal] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"unclaimed"}'}
#scoreboard objectives add playerid dummy
#scoreboard players set id playerid 0
#scoreboard players set test playerid 0