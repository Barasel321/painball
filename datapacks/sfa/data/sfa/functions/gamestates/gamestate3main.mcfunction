#DEBUGGING



kill @e[type=item]

execute as @a[tag=rifle] run function sfa:weapon/rifle/main
execute as @a[tag=shotgun] run function sfa:weapon/shotgun/main
execute as @a[tag=fusion] run function sfa:weapon/fusion/main
execute as @a[tag=sniper] run function sfa:weapon/sniper/main
execute as @a[tag=smg] run function sfa:weapon/smg/main
execute as @a[tag=minigun] run function sfa:weapon/minigun/main



execute as @a[scores={uses=1..}] run scoreboard players set @s uses 0

execute as @a run function sfa:delaypercent

scoreboard players add .time global 1

execute store result score .redleft global if entity @a[team=red,gamemode=adventure]
execute store result score .blueleft global if entity @a[team=blue,gamemode=adventure]

effect give @a minecraft:resistance 2 5 true