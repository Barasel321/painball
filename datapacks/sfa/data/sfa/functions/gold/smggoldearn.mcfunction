tellraw @a ["",{"selector":"@s","bold":true,"color":"gold"},{"text":" has earned the [","bold":true,"italic":true,"color":"gold"},{"text":" Golden SMG ","bold":true,"italic":true,"color":"light_purple"},{"text":"]","bold":true,"italic":true,"color":"gold"}]
particle minecraft:totem_of_undying ~ ~0.5 ~ 0.5 0.5 0.5 0.6 300
particle dust 1 0.835 0.094 0.5 ~ ~0.5 ~ 0.5 0.5 0.5 0.6 150
particle dust 1 0.714 0.094 0.7 ~ ~0.5 ~ 0.5 0.5 0.5 0.6 150
playsound minecraft:entity.wither.spawn player @a ~ ~ ~ 2 0.8
playsound minecraft:entity.player.levelup player @a ~ ~ ~ 2 0
scoreboard players add @s smgkills 1