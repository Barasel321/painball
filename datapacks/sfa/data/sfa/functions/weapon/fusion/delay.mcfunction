execute if entity @s[team=blue] run function sfa:rayblue
execute if entity @s[team=red] run function sfa:rayred

playsound entity.blaze.shoot master @a ~ ~ ~ 0.6 1.2
scoreboard players add @s burst 1
scoreboard players remove @s delay 2