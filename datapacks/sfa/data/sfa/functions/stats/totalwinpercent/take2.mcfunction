tag @s add stattest

scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=pwinpercent2,limit=1] constant = @s totalwinpercent

data merge block 0 86 -131 {Text1:'[{"score":{"name":"@e[tag=stattest,limit=1]","objective":"totalwinpercent"},"color":"gold"},{"text":" %","color":"gold","bold":true}]'}
execute as @s at @s run data modify entity @e[type=minecraft:area_effect_cloud,tag=pwinpercent2,limit=1] CustomName set from block 0 86 -131 Text1

data merge block 0 86 -131 {Text1:'{"selector":"@e[tag=stattest,limit=1]","color":"gold"}'}
execute as @s at @s run data modify entity @e[type=minecraft:area_effect_cloud,tag=pwinpercent2name,limit=1] CustomName set from block 0 86 -131 Text1

tag @s remove stattest