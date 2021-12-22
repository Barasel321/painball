####displays stats with '/trigger stats'

tellraw @s ""
tellraw @s [{"text":"Total Kills: ","color":"gold"},{"score":{"name":"@s","objective":"totalkills"},"color":"gold"}]
tellraw @s [{"text":"Total Deaths: ","color":"light_purple"},{"score":{"name":"@s","objective":"totaldeaths"},"color":"light_purple"}]
tellraw @s [{"text":"Total Games: ","color":"gold"},{"score":{"name":"@s","objective":"totalgames"},"color":"gold"}]
tellraw @s [{"text":"Total Wins: ","color":"light_purple"},{"score":{"name":"@s","objective":"totalwins"},"color":"light_purple"}]
tellraw @s ""
tellraw @s [{"text":"Money: "},{"score":{"name":"@s","objective":"money"},"color":"gold"}]
tellraw @s ""

scoreboard players set @s stats 0
scoreboard players enable @s stats