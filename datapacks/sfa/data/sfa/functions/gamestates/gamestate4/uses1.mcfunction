execute as @s[predicate=sfa:rifle] run tag @s add rifle
execute as @s[predicate=sfa:shotgun] run tag @s add shotgun
execute as @s[predicate=sfa:fusion] run tag @s add fusion
execute as @s[predicate=sfa:sniper] run tag @s add sniper
execute as @s[predicate=sfa:smg] run tag @s add smg
execute as @s[predicate=sfa:minigun] run tag @s add minigun

execute as @s[tag=rifle] run tellraw @s "You chose the rifler"
execute as @s[tag=rifle] run tellraw @s "Good range, good firerate, not much to say"
execute as @s[tag=rifle] run tellraw @s [{"text":"Total Rifle Kills: "},{"score":{"name":"@s","objective":"riflekills"},"color":"gold"}]

execute as @s[tag=shotgun] run tellraw @s "You chose the shotgunner"
execute as @s[tag=shotgun] run tellraw @s "6 pellets, 0 fucks"
execute as @s[tag=shotgun] run tellraw @s [{"text":"Total Shotgun Kills: "},{"score":{"name":"@s","objective":"shotgunkills"},"color":"gold"}]

execute as @s[tag=fusion] run tellraw @s "You chose the specialist"
execute as @s[tag=fusion] run tellraw @s "Hold fire to charge then fire"
execute as @s[tag=fusion] run tellraw @s [{"text":"Total Fusion Rifle Kills: "},{"score":{"name":"@s","objective":"fusionkills"},"color":"gold"}]

execute as @s[tag=sniper] run tellraw @s "You chose the sniper"
execute as @s[tag=sniper] run tellraw @s "Crouch to reload, Drop weapon to scope"
execute as @s[tag=sniper] run tellraw @s [{"text":"Total Sniper Rifle Kills: "},{"score":{"name":"@s","objective":"sniperkills"},"color":"gold"}]

execute as @s[tag=smg] run tellraw @s "You chose the SMG guy"
execute as @s[tag=smg] run tellraw @s "I FORGOT THAT THIS GUY DOESNT HAVE A NAME OR FACE, BUT IM KEEPING IT"
execute as @s[tag=smg] run tellraw @s [{"text":"Total SMG Kills: "},{"score":{"name":"@s","objective":"smgkills"},"color":"gold"}]

execute as @s[tag=minigun] run tellraw @s "You chose the [redacted]"
execute as @s[tag=minigun] run tellraw @s "Yatatatatatatata"
execute as @s[tag=minigun] run tellraw @s [{"text":"Total Minigun Kills: "},{"score":{"name":"@s","objective":"minigunkills"},"color":"gold"}]

execute as @s run tag @s add active
execute as @s[predicate=sfa:locked] run tag @s remove active
execute as @s[predicate=sfa:locked] run tellraw @s {"text":"You don't have that","color":"gray","italic":true}
execute as @s[tag=active] run clear