scoreboard players set .time global 0

title @a title {"text":"RED TEAM WINS","color":"red"}
scoreboard players add .redwin global 1
scoreboard players add @a[team=red] totalwins 1

execute at @a[team=red,tag=win1] run summon firework_rocket ~ ~ ~ {LifeTime:10,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Colors:[I;11546150]}]}}}}
execute at @a[team=red,tag=win1] run summon firework_rocket ~2 ~ ~ {LifeTime:12,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Colors:[I;11546150]}]}}}}
execute at @a[team=red,tag=win1] run summon firework_rocket ~ ~ ~2 {LifeTime:14,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Colors:[I;11546150]}]}}}}
execute at @a[team=red,tag=win1] run summon firework_rocket ~-2 ~ ~ {LifeTime:16,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Colors:[I;11546150]}]}}}}
execute at @a[team=red,tag=win1] run summon firework_rocket ~ ~ ~-2 {LifeTime:18,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Colors:[I;11546150]}]}}}}
