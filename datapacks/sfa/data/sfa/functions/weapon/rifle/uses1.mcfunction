playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 0.6

execute if entity @s[team=red] at @s anchored eyes run function sfa:rayred
execute if entity @s[team=blue] at @s anchored eyes run function sfa:rayblue

execute run scoreboard players set @s delay 0