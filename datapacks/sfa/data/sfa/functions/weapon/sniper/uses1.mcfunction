playsound minecraft:entity.bee.sting master @a ~ ~ ~ 0.6 0.1

execute if entity @s[team=red] run function sfa:rayred
execute if entity @s[team=blue] run function sfa:rayblue

scoreboard players set @s delay 0