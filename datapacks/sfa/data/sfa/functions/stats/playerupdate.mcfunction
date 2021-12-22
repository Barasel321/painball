####Stats main func by chaotic

execute as @a at @s unless score @s playerid matches 0.. run function sfa:stats/playerid
execute as @a at @s run function sfa:stats/playerstore
function sfa:stats/test