
#extra delay before releasing fire is detected, works for rob
execute if entity @s[scores={uses=1..}] run scoreboard players set @s hold 6

execute if entity @s[scores={hold=..0}] run scoreboard players set @s delay 0
execute if entity @s[scores={hold=1..}] run function sfa:weapon/fusion/hold1

#sounds
execute if score @s delaypercent matches 5 at @s run playsound entity.wither.shoot master @a ~ ~ ~ 0.1 0.1
execute if score @s delaypercent matches 30 at @s run playsound entity.wither.shoot master @a ~ ~ ~ 0.1 0.7
execute if score @s delaypercent matches 55 at @s run playsound entity.wither.shoot master @a ~ ~ ~ 0.1 1
execute if score @s delaypercent matches 80 at @s run playsound entity.wither.shoot master @a ~ ~ ~ 0.1 1.2

#burst finisher
execute if entity @s[scores={burst=3..}] run scoreboard players set @s delay 0
execute if entity @s[scores={burst=3..}] run scoreboard players set @s burst 0

scoreboard players operation @s range = .fusionrange global

execute if entity @s[scores={delay=..0}] run scoreboard players set @s delay 0

execute if score @s[scores={uses=1..}] delay >= .fusiondelay global run scoreboard players set @s delay 0

#fusion blank/charge/shoot
execute unless score @s[scores={skin=0}] fusionkills >= max goldenwep run function sfa:inventory/fusion/fusion

execute if score @s[scores={skin=0}] fusionkills >= max goldenwep run function sfa:inventory/fusion/fusiongold