####one-shot function that inits every round

#for the beginning of every round
gamemode adventure @a

#reset the state of all active players
tag @a[tag=active] remove active

tag @a[tag=rifle] remove rifle
tag @a[tag=shotgun] remove shotgun
tag @a[tag=fusion] remove fusion
tag @a[tag=sniper] remove sniper
tag @a[tag=smg] remove smg
tag @a[tag=minigun] remove minigun

tag @a[tag=capturer] remove capturer
tag @a[tag=mvp] remove mvp


#init functions for scores
execute as @a unless score @s money matches 0.. run scoreboard players set @s money 0

execute as @a unless score @s riflekills matches 0.. run scoreboard players set @s riflekills 0
execute as @a unless score @s shotgunkills matches 0.. run scoreboard players set @s shotgunkills 0
execute as @a unless score @s fusionkills matches 0.. run scoreboard players set @s fusionkills 0
execute as @a unless score @s sniperkills matches 0.. run scoreboard players set @s sniperkills 0
execute as @a unless score @s smgkills matches 0.. run scoreboard players set @s smgkills 0
execute as @a unless score @s minigunkills matches 0.. run scoreboard players set @s minigunkills 0

execute as @a unless score @s totalkills matches 0.. run scoreboard players set @s totalkills 0
execute as @a unless score @s totaldeaths matches 0.. run scoreboard players set @s totaldeaths 0
execute as @a unless score @s totalgames matches 0.. run scoreboard players set @s totalgames 0
execute as @a unless score @s totalwins matches 0.. run scoreboard players set @s totalwins 0

execute as @a unless score @s skin matches 0.. run scoreboard players set @s skin 0

execute as @a unless score @s stats matches 0.. run scoreboard players enable @s stats 
execute as @a unless score @s items matches 0.. run scoreboard players enable @s items 


scoreboard players set .time global 0
scoreboard players set @a respawn 0
scoreboard players set @a heads 0

#ironbars for gamestate4 + init spawn
execute as @e[tag=ironbar] at @s run setblock ~ ~ ~ minecraft:iron_bars

execute if score .mode global matches 1 as @a[team=red] run tp @s @e[sort=random,tag=redspawn,tag=elmspawn,limit=1]
execute if score .mode global matches 1 as @a[team=blue] run tp @s @e[sort=random,tag=bluespawn,tag=elmspawn,limit=1]

execute if score .mode global matches 2 as @a[team=red] run tp @s @e[sort=random,tag=redspawn,tag=ctfspawn,limit=1]
execute if score .mode global matches 2 as @a[team=blue] run tp @s @e[sort=random,tag=bluespawn,tag=ctfspawn,limit=1]

execute if score .mode global matches 3 as @a[team=red] run tp @s @e[sort=random,tag=redspawn,tag=hhspawn,limit=1]
execute if score .mode global matches 3 as @a[team=blue] run tp @s @e[sort=random,tag=bluespawn,tag=hhspawn,limit=1]

clear @a

title @a title {"text":"CHOOSE YOUR CLASS!","color":"green"}
title @a subtitle ""

scoreboard players set .gamestate global 4