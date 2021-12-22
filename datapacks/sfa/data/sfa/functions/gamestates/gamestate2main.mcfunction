####VICTORY GAMESTATE
#aka end of round gamestate

function sfa:inventory
kill @e[type=item]
stopsound @a

scoreboard players set @a uses 0

#record and calculate all global stat (optimization is possible here, but not today)
execute if score .time global matches 2 as @a run scoreboard players operation @s totalwinpercent = @s totalwins
execute if score .time global matches 2 as @a run scoreboard players operation @s totalwinpercent *= 100 constant
execute if score .time global matches 2 as @a run scoreboard players operation @s totalwinpercent /= @s totalgames

execute if score .time global matches 2 as @a run scoreboard players operation @s totalkd = @s totalkills
execute if score .time global matches 2 as @a run scoreboard players operation @s totalkd *= 100 constant
execute if score .time global matches 2 as @a run scoreboard players operation @s totalkd /= @s totaldeaths

execute if score .time global matches 2 as @a run scoreboard players operation @s tempinteger = @s totalkd
execute if score .time global matches 2 as @a run scoreboard players operation @s tempinteger /= 100 constant

execute if score .time global matches 2 as @a run scoreboard players operation @s tempdecimal = @s totalkd
execute if score .time global matches 2 as @a run scoreboard players operation @s tempdecimal %= 100 constant

execute if score .time global matches 3 run scoreboard players add @a totalgames 1
execute if score .time global matches 3 run scoreboard players add @a money 20


execute if score .time global matches 3 run function sfa:stats/playerupdate

scoreboard players add .time global 1

execute if score .time global matches 120.. run function sfa:start