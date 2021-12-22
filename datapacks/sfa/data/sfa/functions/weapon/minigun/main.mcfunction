
#extra delay before releasing fire is detected
execute if entity @s[scores={uses=1..}] run scoreboard players set @s hold 6
execute if entity @s[scores={hold=..0}] run scoreboard players set @s delay 0

execute if score @s hold matches 1.. run function sfa:weapon/minigun/hold1

#sounds
execute if score @s delaypercent matches 5 at @s run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 0.6 0.1
execute if score @s delaypercent matches 30 at @s run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 0.6 0.7
execute if score @s delaypercent matches 55 at @s run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 0.6 1
execute if score @s delaypercent matches 80 at @s run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 0.6 1.2

#burst finisher
execute if entity @s[scores={burst=30..}] run scoreboard players set @s delay 0
execute if entity @s[scores={burst=30..}] run scoreboard players set @s burst 0

scoreboard players operation @s range = .minigunrange global

execute if entity @s[scores={delay=..0}] run scoreboard players set @s delay 0

execute if score @s[scores={uses=1..}] delay >= .minigundelay global run scoreboard players set @s delay 0

#minigun blank/spin0/spin1/shoot
execute unless score @s[scores={skin=0}] minigunkills >= max goldenwep run function sfa:inventory/minigun/minigun

execute if score @s[scores={skin=0}] minigunkills >= max goldenwep run function sfa:inventory/minigun/minigungold