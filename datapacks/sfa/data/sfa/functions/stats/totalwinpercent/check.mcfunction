execute as @e[type=area_effect_cloud,tag=playerid] run scoreboard players operation @s constant = @s totalwinpercent
scoreboard players set highest constant -1
execute as @e[type=area_effect_cloud,tag=playerid] run scoreboard players operation highest constant > @s constant

execute as @e[type=area_effect_cloud,tag=playerid] run execute if score @s constant = highest constant run function sfa:stats/totalwinpercent/take1
execute as @e[type=area_effect_cloud,tag=playerid] run execute if score @s constant = highest constant run scoreboard players reset @s constant

scoreboard players set highest constant -1
execute as @e[type=area_effect_cloud,tag=playerid] run scoreboard players operation highest constant > @s constant

execute as @e[type=area_effect_cloud,tag=playerid] run execute if score @s constant = highest constant run function sfa:stats/totalwinpercent/take2
execute as @e[type=area_effect_cloud,tag=playerid] run execute if score @s constant = highest constant run scoreboard players reset @s constant

scoreboard players set highest constant -1
execute as @e[type=area_effect_cloud,tag=playerid] run scoreboard players operation highest constant > @s constant

execute as @e[type=area_effect_cloud,tag=playerid] run execute if score @s constant = highest constant run function sfa:stats/totalwinpercent/take3
execute as @e[type=area_effect_cloud,tag=playerid] run execute if score @s constant = highest constant run scoreboard players reset @s constant