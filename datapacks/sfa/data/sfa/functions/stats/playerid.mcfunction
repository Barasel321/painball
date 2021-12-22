summon minecraft:area_effect_cloud 0 86 -131 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["playerid"]}
scoreboard players add id playerid 1
scoreboard players operation @s playerid = id playerid
execute as @e[type=area_effect_cloud,tag=playerid] unless score @s playerid matches 0.. store result score @s playerid run scoreboard players get id playerid