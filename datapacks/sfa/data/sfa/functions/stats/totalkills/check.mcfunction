execute as @e[type=marker,tag=playerid] run scoreboard players operation @s constant = @s totalkills
scoreboard players set highest constant -1
execute as @e[type=marker,tag=playerid] run scoreboard players operation highest constant > @s constant

execute as @e[type=marker,tag=playerid] run execute if score @s constant = highest constant run function sfa:stats/totalkills/take1
execute as @e[type=marker,tag=playerid] run execute if score @s constant = highest constant run scoreboard players reset @s constant

scoreboard players set highest constant -1
execute as @e[type=marker,tag=playerid] run scoreboard players operation highest constant > @s constant

execute as @e[type=marker,tag=playerid] run execute if score @s constant = highest constant run function sfa:stats/totalkills/take2
execute as @e[type=marker,tag=playerid] run execute if score @s constant = highest constant run scoreboard players reset @s constant

scoreboard players set highest constant -1
execute as @e[type=marker,tag=playerid] run scoreboard players operation highest constant > @s constant

execute as @e[type=marker,tag=playerid] run execute if score @s constant = highest constant run function sfa:stats/totalkills/take3
execute as @e[type=marker,tag=playerid] run execute if score @s constant = highest constant run scoreboard players reset @s constant