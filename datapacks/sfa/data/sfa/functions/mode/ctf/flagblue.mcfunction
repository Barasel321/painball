##
 # flag.mcfunction
 # 
 #
 # Created by .
##
execute if entity @s[team=red] run tag @s add capturer
execute if entity @s[team=red] run kill @e[tag=flagblue]

execute if entity @s[team=blue] run tp @e[tag=flagblue] @e[tag=flagbluepoint,limit=1]

execute if entity @s[team=red] run tellraw @s [{"text":"look","color":"white","obfuscated":true},{"text":" You managed to steal the flag!","color":"yellow","obfuscated":false},{"text":" nice","color":"white","obfuscated":true}]

scoreboard players add @s money 3

advancement revoke @s only sfa:flagblue