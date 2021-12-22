# @s = dead (killer info lost)

title @s title ""

scoreboard players set @s killstreak 0
scoreboard players set @s heads 0
scoreboard players add @s totaldeaths 1

gamemode spectator
tag @s remove headshot
tag @s remove bodyshot
tag @s remove legshot