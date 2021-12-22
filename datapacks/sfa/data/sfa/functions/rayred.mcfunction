####red shooting function
particle minecraft:dust 0.69 0.18 0.15 1 ~ ~ ~ 0 0 0 0 1

scoreboard players remove @s range 1

execute as @p[team=!red,gamemode=adventure] positioned ~ ~-1.7 ~ if entity @s[distance=..0.42,predicate=!sfa:sneaking] positioned ~ ~1.8 ~ run tag @s add headshot
execute as @p[team=!red,gamemode=adventure] positioned ~ ~-1 ~ if entity @s[distance=..0.6,predicate=!sfa:sneaking] positioned ~ ~1 ~ run tag @s add bodyshot
execute as @p[team=!red,gamemode=adventure] positioned ~ ~-0.2 ~ if entity @s[distance=..0.4,predicate=!sfa:sneaking] positioned ~ ~0.2 ~ run tag @s add legshot

execute as @p[team=!red,gamemode=adventure] positioned ~ ~-1.4 ~ if entity @s[distance=..0.42,predicate=sfa:sneaking] positioned ~ ~1.8 ~ run tag @s add headshot
execute as @p[team=!red,gamemode=adventure] positioned ~ ~-0.86 ~ if entity @s[distance=..0.55,predicate=sfa:sneaking] positioned ~ ~1 ~ run tag @s add bodyshot
execute as @p[team=!red,gamemode=adventure] positioned ~ ~-0.2 ~ if entity @s[distance=..0.4,predicate=sfa:sneaking] positioned ~ ~0.2 ~ run tag @s add legshot

execute if entity @a[tag=headshot] run function sfa:shot/headshot
execute if entity @a[tag=bodyshot] run function sfa:shot/bodyshot
execute if entity @a[tag=legshot] run function sfa:shot/legshot




execute if score @s range matches 0 run particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0 5
execute if score @s range matches 1.. positioned ^ ^ ^0.5 if block ~ ~ ~ #minecraft:redpassthrough run function sfa:rayred