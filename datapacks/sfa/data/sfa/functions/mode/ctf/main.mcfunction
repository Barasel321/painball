execute if score .time global matches 0 run kill @e[tag=flagblue]
execute if score .time global matches 0 run kill @e[tag=flagred]

execute if score .time global matches 1 at @e[tag=flagbluepoint] run summon villager ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["flagblue"],ArmorItems:[{},{},{},{id:"minecraft:light_blue_banner",Count:1b}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:200000,ShowParticles:0b}],Glowing:1b,Team:"blue"}
execute if score .time global matches 1 at @e[tag=flagredpoint] run summon villager ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["flagred"],ArmorItems:[{},{},{},{id:"minecraft:red_banner",Count:1b}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:200000,ShowParticles:0b}],Glowing:1b,Team:"red"}

execute at @a[team=red,tag=capturer] run particle dust 0.69 0.18 0.15 2 ~ ~ ~ 0 0 0 1 0 normal
execute at @a[team=blue,tag=capturer] run particle dust 0.23 0.70 0.85 2 ~ ~ ~ 0 0 0 1 0 normal
execute at @a[tag=capturer] run particle dust 0.937 1 0.082 1 ~ ~ ~ 0 0 0 1 0 normal

execute as @a[gamemode=spectator,tag=active] run function sfa:mode/ctf/respawn
execute as @a at @s if entity @e[tag=ironbar,distance=..1] run function sfa:spawnprotection

execute at @a[gamemode=spectator,tag=capturer,team=red] run summon villager ~ ~-1.5 ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["flagblue"],ArmorItems:[{},{},{},{id:"minecraft:light_blue_banner",Count:1b}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:200000,ShowParticles:0b}],Glowing:1b,Team:"blue"}
execute at @a[gamemode=spectator,tag=capturer,team=blue] run summon villager ~ ~-1.5 ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["flagred"],ArmorItems:[{},{},{},{id:"minecraft:red_banner",Count:1b}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:200000,ShowParticles:0b}],Glowing:1b,Team:"red"}

execute as @a[gamemode=spectator,tag=capturer] run tag @s remove capturer

execute as @a[team=red,tag=capturer] at @s if block ~ ~-1 ~ red_glazed_terracotta if entity @e[tag=flagred,distance=..7] run tag @s add mvp
execute as @a[team=blue,tag=capturer] at @s if block ~ ~-1 ~ light_blue_glazed_terracotta if entity @e[tag=flagblue,distance=..7] run tag @s add mvp

execute if entity @a[tag=mvp] run function sfa:mode/ctf/end

execute if score .gamestate global matches 2 run title @a subtitle [{"score":{"name":".redwin","objective":"global"},"color":"red"},{"text":" - ","color":"white"},{"score":{"name":".bluewin","objective":"global"},"color":"blue"},{"text":"    Capturer: ","color":"white"},{"selector":"@a[tag=mvp]","color":"reset"}]