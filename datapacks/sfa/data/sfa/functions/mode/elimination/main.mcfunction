execute if score .blueleft global matches 0 run scoreboard players set .gamestate global 2
execute if score .redleft global matches 0 run scoreboard players set .gamestate global 2

execute if score .blueleft global matches 0 if score .redleft global matches 1.. run function sfa:mode/elimination/redwin
execute if score .redleft global matches 0 if score .blueleft global matches 1.. run function sfa:mode/elimination/bluewin
execute if score .redleft global matches 0 if score .blueleft global matches 0 run function sfa:mode/elimination/tie

execute if score .gamestate global matches 2 run title @a subtitle [{"score":{"name":".redwin","objective":"global"},"color":"red"},{"text":" === ","color":"white"},{"score":{"name":".bluewin","objective":"global"},"color":"blue"}]
title @s[gamemode=spectator] actionbar [{"score":{"name":".redleft","objective":"global"},"color":"red"},{"text":" VS ","color":"dark_purple"},{"score":{"name":".blueleft","objective":"global"},"color":"blue"}]