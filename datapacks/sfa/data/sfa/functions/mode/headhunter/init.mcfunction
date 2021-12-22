scoreboard objectives remove heads
scoreboard objectives add heads dummy
fill -1 48 229 1 48 231 gray_glazed_terracotta

scoreboard players set active time 0
scoreboard players set red teamheads 0
scoreboard players set blue teamheads 0
scoreboard players set delivery time 0

scoreboard players operation maxred teamheads = .redleft global
scoreboard players operation maxblue teamheads = .blueleft global
scoreboard players operation maxred teamheads *= 5 constant
scoreboard players operation maxblue teamheads *= 5 constant
scoreboard players add maxred teamheads 1
scoreboard players add maxblue teamheads 1

bossbar set minecraft:time players @a
bossbar set minecraft:time visible true
bossbar set minecraft:time max 1800
scoreboard objectives setdisplay sidebar heads
scoreboard objectives modify heads displayname {"text":"HEADS","bold":true,"italic":false,"color":"white"}

bossbar set minecraft:time name [{"text":"RED: ","color":"red"},{"score":{"name":"red","objective":"teamheads"},"color":"red"},{"text":"/","color":"dark_red"},{"score":{"name":"maxred","objective":"teamheads"},"color":"red"},{"text":" | ","color":"white"},{"text":"BLUE: ","color":"blue"},{"score":{"name":"blue","objective":"teamheads"},"color":"blue"},{"text":"/","color":"dark_blue"},{"score":{"name":"maxblue","objective":"teamheads"},"color":"blue"}]