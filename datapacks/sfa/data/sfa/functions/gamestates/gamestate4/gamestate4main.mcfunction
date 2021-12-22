#PREMAIN GAMESTATE

execute as @a[tag=!active,scores={skin=0}] run function sfa:gamestates/gamestate4/skin0
execute as @a[tag=!active,scores={skin=1}] run function sfa:gamestates/gamestate4/skin1

kill @e[type=item]

scoreboard players add .time global 1


execute as @a[scores={uses=1..},predicate=sfa:rifle] run tag @s add rifle
execute as @a[scores={uses=1..},predicate=sfa:shotgun] run tag @s add shotgun
execute as @a[scores={uses=1..},predicate=sfa:fusion] run tag @s add fusion
execute as @a[scores={uses=1..},predicate=sfa:sniper] run tag @s add sniper
execute as @a[scores={uses=1..},predicate=sfa:smg] run tag @s add smg
execute as @a[scores={uses=1..},predicate=sfa:minigun] run tag @s add minigun


execute as @a if score @s drop matches 1.. run scoreboard players add @s skin 1
execute as @a if score @s drop matches 1.. run scoreboard players set @s drop 0
execute as @a if score @s skin matches 2.. run scoreboard players set @s skin 0


execute as @a[scores={uses=1..}] run function sfa:gamestates/gamestate4/uses1

scoreboard players set @a uses 0

execute if entity @a[tag=!active] if score .time global matches 360 run tellraw @a [{"selector":"@a[tag=!active]"},{"text":", HURRY THE FUCK UP OR YOU GET KICKED","color":"dark_red"}]
execute if entity @a[tag=!active] if score .time global matches 500 run kick @a[tag=!active]


execute unless entity @a[tag=!active] run scoreboard players set .time global 0
execute unless entity @a[tag=!active] run scoreboard players set .gamestate global 1


execute if score .gamestate global matches 1 as @e[tag=ironbar] at @s run setblock ~ ~ ~ air
execute if score .gamestate global matches 1 run function sfa:pickrates/main