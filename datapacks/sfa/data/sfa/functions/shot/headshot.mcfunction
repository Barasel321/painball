# @s = killer, @p[tag=headshot] = dead

function sfa:shot/shot

execute if entity @s[predicate=!sfa:sneaking] if entity @p[tag=headshot,predicate=!sfa:sneaking] run tellraw @a [{"selector":"@s"},{"text":" headshot ","color":"gold"},{"selector":"@p[tag=headshot]"}]

execute if entity @s[predicate=!sfa:sneaking] if entity @p[tag=headshot,predicate=sfa:sneaking] run tellraw @a [{"selector":"@s"},{"text":" completely fucked ","color":"gold"},{"selector":"@p[tag=headshot]"}]

execute if entity @s[predicate=sfa:sneaking] if entity @p[tag=headshot,predicate=!sfa:sneaking] run tellraw @a [{"selector":"@s"},{"text":" robbed ","color":"gold"},{"selector":"@p[tag=headshot]"}]

execute if entity @s[predicate=sfa:sneaking] if entity @p[tag=headshot,predicate=sfa:sneaking] run tellraw @a [{"selector":"@s"},{"text":" won the camp battle vs ","color":"gold"},{"selector":"@p[tag=headshot]"}]

execute if entity @p[tag=headshot,scores={killstreak=5..}] run tellraw @a [{"selector":"@s ","color":"reset"},{"text":" shut down ","color":"dark_purple"},{"selector":"@p[tag=headshot,scores={killstreak=5..}]","color":"reset"},{"text":"'s killstreak at ","color":"dark_purple"},{"score":{"name":"@p[tag=headshot]","objective":"killstreak"},"color":"gold","bold":true}]
execute if entity @p[tag=headshot,scores={killstreak=5..}] run scoreboard players operation @s money += @p[tag=headshot,scores={killstreak=5..}] killstreak
execute if entity @p[tag=headshot] run scoreboard players operation @s heads += @p[tag=headshot] heads


title @p[tag=headshot] title ""
title @p[tag=headshot] subtitle [{"selector":"@s"},{"text":" killed you!","color":"white"}]

execute if entity @s[tag=killquip1] run title @p[tag=headshot] title "Haha Gay"
execute if entity @p[tag=headshot,tag=dsound1] run playsound minecraft:entity.villager.death master @a ~ ~ ~ 1 1


execute as @p[tag=headshot] run function sfa:shot/dead
# @p[tag=headshot] dies after this point

#headshot bonus
scoreboard players add @s money 2

playsound entity.zombie.attack_iron_door master @s ~ ~ ~ 1 1