scoreboard players operation test playerid = @s playerid
execute as @e[type=area_effect_cloud,tag=playerid] if score @s playerid = test playerid run scoreboard players operation @s totaldeaths = @p totaldeaths
execute as @e[type=area_effect_cloud,tag=playerid] if score @s playerid = test playerid run scoreboard players operation @s totalkills = @p totalkills
execute as @e[type=area_effect_cloud,tag=playerid] if score @s playerid = test playerid run scoreboard players operation @s totalgames = @p totalgames
execute as @e[type=area_effect_cloud,tag=playerid] if score @s playerid = test playerid run scoreboard players operation @s totalwins = @p totalwins
execute as @e[type=area_effect_cloud,tag=playerid] if score @s playerid = test playerid run scoreboard players operation @s totalwinpercent = @p totalwinpercent
execute as @e[type=area_effect_cloud,tag=playerid] if score @s playerid = test playerid run scoreboard players operation @s totalkd = @p totalkd
execute as @e[type=area_effect_cloud,tag=playerid] if score @s playerid = test playerid run scoreboard players operation @s tempinteger = @p tempinteger
execute as @e[type=area_effect_cloud,tag=playerid] if score @s playerid = test playerid run scoreboard players operation @s tempdecimal = @p tempdecimal

tag @s add storing
data merge block 0 86 -131 {Text1:'{"selector":"@a[tag=storing]","color":"gold"}'}
tag @s remove storing
execute as @e[type=area_effect_cloud,tag=playerid] if score @s playerid = test playerid run data modify entity @s CustomName set from block 0 86 -131 Text1
scoreboard players set test playerid 0