scoreboard players add @s respawn 1

scoreboard players operation @s respawnpercent = @s respawn
scoreboard players operation @s respawnpercent *= 100 constant
scoreboard players operation @s respawnpercent /= .respawnhh global



execute if score @s[team=red] respawn >= .respawnhh global run tp @s @e[tag=redspawn,tag=hhspawn,sort=random,limit=1]
execute if score @s[team=blue] respawn >= .respawnhh global run tp @s @e[tag=bluespawn,tag=hhspawn,sort=random,limit=1]

execute if score @s[tag=spawnfx1] respawn >= .respawnhh global at @s run particle minecraft:totem_of_undying ~ ~2 ~ 1 0.7 1 0 100
execute if score @s[tag=spawnfx1] respawn >= .respawnhh global at @s run playsound item.totem.use master @a ~ ~ ~ 0.5 1

execute if score @s respawn = .respawnhh global run gamemode adventure
execute if score @s respawn = .respawnhh global run scoreboard players set @s respawn 0
title @s actionbar [{"text":"Respawning: ","color":"dark_purple"},{"score":{"name":"@s","objective":"respawnpercent"},"color":"light_purple"},{"text":"%","color":"dark_purple"}]