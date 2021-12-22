scoreboard players set playercount pickrate 0
execute store result score playercount pickrate if entity @a[tag=active]

scoreboard players set rifle pickrate 0
execute store result score rifle pickrate if entity @a[tag=rifle,tag=active]

scoreboard players set shotgun pickrate 0
execute store result score shotgun pickrate if entity @a[tag=shotgun,tag=active]

scoreboard players set fusion pickrate 0
execute store result score fusion pickrate if entity @a[tag=fusion,tag=active]

scoreboard players set sniper pickrate 0
execute store result score sniper pickrate if entity @a[tag=sniper,tag=active]

scoreboard players set smg pickrate 0
execute store result score smg pickrate if entity @a[tag=smg,tag=active]

scoreboard players set minigun pickrate 0
execute store result score minigun pickrate if entity @a[tag=minigun,tag=active]

execute if score .mode global matches 1 run function sfa:pickrates/elim
execute if score .mode global matches 2 run function sfa:pickrates/ctf
execute if score .mode global matches 3 run function sfa:pickrates/hh