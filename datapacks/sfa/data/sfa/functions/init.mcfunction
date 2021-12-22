####/reload
bossbar set minecraft:time visible false
scoreboard objectives setdisplay sidebar

scoreboard players set .gamestate global 0
scoreboard players set .time global 0
scoreboard players set .redwin global 0
scoreboard players set .bluewin global 0

execute if score .mode global matches 1 run tellraw @a "Gamemode: Elimination"
execute if score .mode global matches 2 run tellraw @a "Gamemode: Capture the Flag"
execute if score .mode global matches 3 run tellraw @a "Gamemode: Headhunters"

execute unless score .mode global matches 1..3 run tellraw @a "Gamemode error, please change it to a valid number"