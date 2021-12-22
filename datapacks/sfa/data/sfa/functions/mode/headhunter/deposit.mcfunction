scoreboard players remove @s heads 1
execute if entity @s[team=red] run scoreboard players add red teamheads 1
execute if entity @s[team=blue] run scoreboard players add blue teamheads 1
playsound minecraft:entity.villager.ambient master @a ~ ~ ~

bossbar set minecraft:time name [{"text":"RED: ","color":"red"},{"score":{"name":"red","objective":"teamheads"},"color":"red"},{"text":"/","color":"dark_red"},{"score":{"name":"maxred","objective":"teamheads"},"color":"red"},{"text":" | ","color":"white"},{"text":"BLUE: ","color":"blue"},{"score":{"name":"blue","objective":"teamheads"},"color":"blue"},{"text":"/","color":"dark_blue"},{"score":{"name":"maxblue","objective":"teamheads"},"color":"blue"}]
