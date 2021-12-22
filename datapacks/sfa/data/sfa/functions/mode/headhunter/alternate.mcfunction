execute if score .time global matches 1800 run bossbar set minecraft:time max 600

scoreboard players add active time 1
execute if score active time matches 600.. run scoreboard players set active time 0

scoreboard players add deposit time 1
execute if score deposit time matches 15.. run scoreboard players set deposit time 0

execute if score active time matches 1 run scoreboard players add delivery time 1
execute if score delivery time matches 2.. run scoreboard players set delivery time 0

execute if score delivery time matches 1 if score active time matches 1 run function sfa:mode/headhunter/open
execute if score delivery time matches 0 if score active time matches 1 run function sfa:mode/headhunter/close

