execute if score .time global matches 0 run function sfa:mode/headhunter/init

execute if score .time global matches ..1799 store result bossbar minecraft:time value run scoreboard players get .time global
execute if score .time global matches 1800.. store result bossbar minecraft:time value run scoreboard players get active time

execute if score .time global matches 1800.. run function sfa:mode/headhunter/alternate

execute as @a[gamemode=!spectator,scores={heads=1..}] at @s if block ~ ~-1 ~ lime_glazed_terracotta if score deposit time matches 1 run function sfa:mode/headhunter/deposit

execute as @a[gamemode=spectator,tag=active] run function sfa:mode/headhunter/respawn
execute as @a at @s if entity @e[tag=ironbar,distance=..1] run function sfa:spawnprotection


execute if score red teamheads >= maxred teamheads run function sfa:mode/headhunter/end
execute if score blue teamheads >= maxblue teamheads run function sfa:mode/headhunter/end
execute if score .time global matches 4800.. run function sfa:mode/headhunter/end