####MAIN GAMESTATE
#aka the actual game gamestate

execute as @a at @s run function sfa:inventory/inventory
kill @e[type=item]

#weapon funcs
execute as @a[tag=rifle,gamemode=!spectator] run function sfa:weapon/rifle/main
execute as @a[tag=shotgun,gamemode=!spectator] run function sfa:weapon/shotgun/main
execute as @a[tag=fusion,gamemode=!spectator] run function sfa:weapon/fusion/main
execute as @a[tag=sniper,gamemode=!spectator] run function sfa:weapon/sniper/main
execute as @a[tag=smg,gamemode=!spectator] run function sfa:weapon/smg/main
execute as @a[tag=minigun,gamemode=!spectator] run function sfa:weapon/minigun/main

#universal uses reset
execute as @a[scores={uses=1..}] run scoreboard players set @s uses 0

execute as @a run function sfa:delaypercent

execute store result score .redleft global if entity @a[team=red,gamemode=adventure]
execute store result score .blueleft global if entity @a[team=blue,gamemode=adventure]

#gamemode funcs
execute if score .mode global matches 1 run function sfa:mode/elimination/main
execute if score .mode global matches 2 run function sfa:mode/ctf/main
execute if score .mode global matches 3 run function sfa:mode/headhunter/main

#cosmetic funcs
execute as @a[tag=streakfx1,scores={killstreak=5..}] run function sfa:cosmetics/eyes


#for knockback but no damage
effect give @a minecraft:resistance 2 5 true

#for anyone new who joins
gamemode spectator @a[tag=!active]

scoreboard players add .time global 1