scoreboard players set .time global 0

title @a title {"text":"BLUE TEAM WINS","color":"blue"}
scoreboard players add .bluewin global 1
scoreboard players add @a[team=blue] totalwins 1

execute at @a[team=blue,tag=win1] run summon firework_rocket ~ ~ ~ {LifeTime:10,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Colors:[I;3847130]}]}}}}
execute at @a[team=blue,tag=win1] run summon firework_rocket ~2 ~ ~ {LifeTime:12,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Colors:[I;3847130]}]}}}}
execute at @a[team=blue,tag=win1] run summon firework_rocket ~ ~ ~2 {LifeTime:14,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Colors:[I;3847130]}]}}}}
execute at @a[team=blue,tag=win1] run summon firework_rocket ~-2 ~ ~ {LifeTime:16,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Colors:[I;3847130]}]}}}}
execute at @a[team=blue,tag=win1] run summon firework_rocket ~ ~ ~-2 {LifeTime:18,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Colors:[I;3847130]}]}}}}
