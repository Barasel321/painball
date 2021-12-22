# @s = killer

#gameplay scoreboards
scoreboard players add @s kills 1
scoreboard players add @s heads 1
scoreboard players add @s killstreak 1
scoreboard players set @s range 0
scoreboard players add @s totalkills 1
scoreboard players add @s money 4

#global variables
scoreboard players operation @s totalkd = 100 constant
scoreboard players operation @s total *= @s totalkills
scoreboard players operation @s totalkd /= @s totaldeaths

scoreboard players operation @s tempinteger = @s totalkd
scoreboard players operation @s tempinteger /= 100 constant

scoreboard players operation @s tempdecimal = @s totalkd
scoreboard players operation @s tempdecimal %= 100 constant

#weapon kills
scoreboard players add @s[tag=rifle] riflekills 1
scoreboard players add @s[tag=shotgun] shotgunkills 1
scoreboard players add @s[tag=fusion] fusionkills 1
scoreboard players add @s[tag=sniper] sniperkills 1
scoreboard players add @s[tag=smg] smgkills 1
scoreboard players add @s[tag=minigun] minigunkills 1


#kilstreak messages + money
execute if score @s killstreak matches 5 run tellraw @a [{"selector":"@s"},{"text":" got a ","color":"white"},{"text":"5 killstreak!","color":"light_purple"}]
execute if score @s killstreak matches 5 run scoreboard players add @s money 20

execute if score @s killstreak matches 10 run tellraw @a [{"selector":"@s"},{"text":" somehow got a ","color":"white"},{"text":"10 killstreak!","color":"dark_purple"}]
execute if score @s killstreak matches 10 run scoreboard players add @s money 40

execute if score @s killstreak matches 15 run tellraw @a [{"selector":"@s"},{"text":" got a ","color":"white"},{"text":"15 killstreak??","color":"green"},{"text":" damn you guys suck","color":"white"}]
execute if score @s killstreak matches 15 run scoreboard players add @s money 60

execute if score @s killstreak matches 20 run tellraw @a [{"text":"WTF?? ","color":"white"},{"selector":"@s","color":"reset"},{"text":" actually got a ","color":"white"},{"text":"20 killstreak?!?!1","color":"gold"}]
execute if score @s killstreak matches 20 run scoreboard players add @s money 80

execute if score @s killstreak matches 25 run tellraw @a [{"text":"If this was cod, ","color":"white"},{"selector":"@s","color":"reset"},{"text":" would have gotten tactical nuke cus they got a ","color":"white"},{"text":"25 killstreak","color":"dark_purple","bold":true,"italic":true}]
execute if score @s killstreak matches 25 run scoreboard players add @s money 100

execute if score @s killstreak matches 50 run tellraw @a [{"selector":"@s","color":"reset"},{"text":". Please give those monkeys a chance, You fucked them till you got a ","color":"white"},{"text":"50 killstreak","color":"green","bold":true,"italic":true,"underlined":true},{"text":". Or you know what, fuck these kids. Get 100 Ill see you then.","color":"white"}]
execute if score @s killstreak matches 50 run scoreboard players add @s money 200

execute if score @s killstreak matches 100 run tellraw @a [{"text":"Congrats ","color":"white"},{"selector":"@s ","color":"reset"},{"text":"for getting a "},{"text":"100 killstreak","color":"gold","bold":true,"italic":true,"underlined":true},{"text":". I know that nothing will satisfy you anymore. Therefore I, Barasel321, greatest youtuber of all time, will stop writing killstreak messages. Trust me, this is for your own good.","color":"white"}]
execute if score @s killstreak matches 100 run scoreboard players add @s money 400



execute at @s run function sfa:gold/check





execute at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 1 0.5