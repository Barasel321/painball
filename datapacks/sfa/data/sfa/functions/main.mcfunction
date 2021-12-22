# gamestate order is as follows
# 0 -> 4 -> 1 -> 2 -> 4 -> 1 -> 2 -> ....
#0 = pregame
#4 = preround
#1 = round
#2 = postround
#3 = debugging

execute if score .gamestate global matches 0 run function sfa:gamestates/gamestate0main

execute if score .gamestate global matches 1 run function sfa:gamestates/gamestate1main

execute if score .gamestate global matches 2 run function sfa:gamestates/gamestate2main

execute if score .gamestate global matches 3 run function sfa:gamestates/gamestate3main

execute if score .gamestate global matches 4 run function sfa:gamestates/gamestate4/gamestate4main

execute as @a run effect give @s minecraft:saturation 1 0 true

execute as @a[scores={stats=1..}] run function sfa:stats
execute as @a[scores={items=1..}] run function sfa:items