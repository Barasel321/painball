# @s = killer, @p[tag=bodyshot] = dead

function sfa:shot/shot

execute if entity @s[predicate=!sfa:sneaking] if entity @p[tag=bodyshot,predicate=!sfa:sneaking] run tellraw @a [{"selector":"@s"},{"text":" shot ","color":"white"},{"selector":"@p[tag=bodyshot]"}]

execute if entity @s[predicate=!sfa:sneaking] if entity @p[tag=bodyshot,predicate=sfa:sneaking] run tellraw @a [{"selector":"@s"},{"text":" rekt ","color":"white"},{"selector":"@p[tag=bodyshot]"}]

execute if entity @s[predicate=sfa:sneaking] if entity @p[tag=bodyshot,predicate=!sfa:sneaking] run tellraw @a [{"selector":"@s"},{"text":" camped ","color":"white"},{"selector":"@p[tag=bodyshot]"}]

execute if entity @s[predicate=sfa:sneaking] if entity @p[tag=bodyshot,predicate=sfa:sneaking] run tellraw @a [{"selector":"@s"},{"text":" turned out gayer than ","color":"white"},{"selector":"@p[tag=bodyshot]"}]

execute if entity @p[tag=bodyshot,scores={killstreak=5..}] run tellraw @a [{"selector":"@s ","color":"reset"},{"text":" shut down ","color":"dark_purple"},{"selector":"@p[tag=bodyshot,scores={killstreak=5..}]","color":"reset"},{"text":"'s killstreak at ","color":"dark_purple"},{"score":{"name":"@p[tag=bodyshot]","objective":"killstreak"},"color":"gold","bold":true}]
execute if entity @p[tag=bodyshot,scores={killstreak=5..}] run scoreboard players operation @s money += @p[tag=bodyshot,scores={killstreak=5..}] killstreak
execute if entity @p[tag=bodyshot] run scoreboard players operation @s heads += @p[tag=bodyshot] heads


title @p[tag=bodyshot] title ""
title @p[tag=bodyshot] subtitle [{"selector":"@s"},{"text":" killed you!","color":"white"}]

execute if entity @s[tag=killquip1] run title @p[tag=bodyshot] title "Haha Gay"
execute if entity @p[tag=bodyshot,tag=dsound1] run playsound minecraft:entity.villager.death master @a ~ ~ ~ 1 1


execute as @p[tag=bodyshot] run function sfa:shot/dead
# @p[tag=bodyshot] dies after this point


