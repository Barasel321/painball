execute if entity @s[team=blue] run function sfa:rayblue
execute if entity @s[team=red] run function sfa:rayred

playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 2
scoreboard players add @s burst 1
scoreboard players remove @s delay 1