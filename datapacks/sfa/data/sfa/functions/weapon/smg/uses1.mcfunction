playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 1.2

execute if entity @s[team=red] run function sfa:rayred
execute if entity @s[team=blue] run function sfa:rayblue

scoreboard players set @s delay 0