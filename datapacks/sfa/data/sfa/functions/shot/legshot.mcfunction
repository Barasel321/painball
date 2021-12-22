# @s = killer, @p[tag=legshot] = dead

function sfa:shot/shot

execute if entity @s[predicate=!sfa:sneaking] if entity @p[tag=legshot,predicate=!sfa:sneaking] run tellraw @a [{"selector":"@s"},{"text":" grazed ","color":"white"},{"selector":"@p[tag=legshot]"}]

execute if entity @s[predicate=!sfa:sneaking] if entity @p[tag=legshot,predicate=sfa:sneaking] run tellraw @a [{"selector":"@s"},{"text":" crippled ","color":"white"},{"selector":"@p[tag=legshot]"}]

execute if entity @s[predicate=sfa:sneaking] if entity @p[tag=legshot,predicate=!sfa:sneaking] run tellraw @a [{"selector":"@s"},{"text":" shot ","color":"white"},{"selector":"@p[tag=legshot]"},{"text":" in the knee","color":"white"}]

execute if entity @s[predicate=sfa:sneaking] if entity @p[tag=legshot,predicate=sfa:sneaking] run tellraw @a [{"selector":"@s"},{"text":" got a cheap shot on ","color":"white"},{"selector":"@p[tag=legshot]"}]

execute if entity @p[tag=legshot,scores={killstreak=5..}] run tellraw @a [{"selector":"@s ","color":"reset"},{"text":" shut down ","color":"dark_purple"},{"selector":"@p[tag=legshot,scores={killstreak=5..}]","color":"reset"},{"text":"'s killstreak at ","color":"dark_purple"},{"score":{"name":"@p[tag=legshot]","objective":"killstreak"},"color":"gold","bold":true}]
execute if entity @p[tag=legshot,scores={killstreak=5..}] run scoreboard players operation @s money += @p[tag=legshot,scores={killstreak=5..}] killstreak
execute if entity @p[tag=legshot] run scoreboard players operation @s heads += @p[tag=legshot] heads


title @p[tag=legshot] title ""
title @p[tag=legshot] subtitle [{"selector":"@s"},{"text":" killed you!","color":"white"}]

execute if entity @s[tag=killquip1] run title @p[tag=legshot] title "Haha Gay"
execute if entity @p[tag=legshot,tag=dsound1] run playsound minecraft:entity.villager.death master @a ~ ~ ~ 1 1


execute as @p[tag=legshot] run function sfa:shot/dead
# @p[tag=legshot] dies after this point


