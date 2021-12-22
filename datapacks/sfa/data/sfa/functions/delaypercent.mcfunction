
#delaypercent = delay/maxdelay * 100%
scoreboard players operation @s delaypercent = @s delay
scoreboard players operation @s delaypercent *= 100 constant

scoreboard players operation @s[tag=rifle] delaypercent /= .rifledelay global
scoreboard players operation @s[tag=fusion] delaypercent /= .fusiondelay global
scoreboard players operation @s[tag=shotgun] delaypercent /= .shotgundelay global
scoreboard players operation @s[tag=sniper] delaypercent /= .sniperdelay global
scoreboard players operation @s[tag=smg] delaypercent /= .smgdelay global
scoreboard players operation @s[tag=minigun] delaypercent /= .minigundelay global




title @s[gamemode=adventure,scores={delaypercent=..99}] actionbar [{"text":"Paintball Gun: ","color":"gold"},{"score":{"name":"*","objective":"delaypercent"},"color":"red"},{"text":"%       "},{"score":{"name":".redleft","objective":"global"},"color":"red"},{"text":" VS ","color":"dark_purple"},{"score":{"name":".blueleft","objective":"global"},"color":"blue"}]
title @s[gamemode=adventure,scores={delaypercent=100..}] actionbar [{"text":"Paintball Gun: ","color":"gold"},{"score":{"name":"*","objective":"delaypercent"},"color":"green"},{"text":"%       "},{"score":{"name":".redleft","objective":"global"},"color":"red"},{"text":" VS ","color":"dark_purple"},{"score":{"name":".blueleft","objective":"global"},"color":"blue"}]