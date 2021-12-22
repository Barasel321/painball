tag @s add stattest

scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=pkd2,limit=1] constant = @s totalkd

execute if score @s tempdecimal matches ..9 run data merge block 0 86 -131 {Text1:'[{"score":{"name":"@e[tag=stattest,limit=1]","objective":"tempinteger"},"color":"gold"},{"text":".","color":"gold"},{"text":"0","color":"gold"},{"score":{"name":"@e[tag=stattest,limit=1]","objective":"tempdecimal"},"color":"gold"},{"text":" K/D","color":"gold","bold":true}]'}
execute if score @s tempdecimal matches 10.. run data merge block 0 86 -131 {Text1:'[{"score":{"name":"@e[tag=stattest,limit=1]","objective":"tempinteger"},"color":"gold"},{"text":".","color":"gold"},{"score":{"name":"@e[tag=stattest,limit=1]","objective":"tempdecimal"},"color":"gold"},{"text":" K/D","color":"gold","bold":true}]'}
execute as @s at @s run data modify entity @e[type=minecraft:area_effect_cloud,tag=pkd2,limit=1] CustomName set from block 0 86 -131 Text1

data merge block 0 86 -131 {Text1:'{"selector":"@e[tag=stattest,limit=1]","color":"gold"}'}
execute as @s at @s run data modify entity @e[type=minecraft:area_effect_cloud,tag=pkd2name,limit=1] CustomName set from block 0 86 -131 Text1

tag @s remove stattest