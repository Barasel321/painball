playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1.5

#constant spread
#      *   *   *
#      *   *   *
execute if entity @s[team=red] anchored eyes facing ^0.15 ^0.05 ^1 run function sfa:rayred
scoreboard players operation @s range = .shotgunrange global
execute if entity @s[team=red] anchored eyes facing ^0 ^0.05 ^1 run function sfa:rayred
scoreboard players operation @s range = .shotgunrange global
execute if entity @s[team=red] anchored eyes facing ^-0.15 ^0.05 ^1 run function sfa:rayred
scoreboard players operation @s range = .shotgunrange global
execute if entity @s[team=red] anchored eyes facing ^0.15 ^-0.05 ^1 run function sfa:rayred
scoreboard players operation @s range = .shotgunrange global
execute if entity @s[team=red] anchored eyes facing ^0 ^-0.05 ^1 run function sfa:rayred
scoreboard players operation @s range = .shotgunrange global
execute if entity @s[team=red] anchored eyes facing ^-0.15 ^-0.05 ^1 run function sfa:rayred
scoreboard players operation @s range = .shotgunrange global

execute if entity @s[team=blue] anchored eyes facing ^0.15 ^0.05 ^1 run function sfa:rayblue
scoreboard players operation @s range = .shotgunrange global
execute if entity @s[team=blue] anchored eyes facing ^0 ^0.05 ^1 run function sfa:rayblue
scoreboard players operation @s range = .shotgunrange global
execute if entity @s[team=blue] anchored eyes facing ^-0.15 ^0.05 ^1 run function sfa:rayblue
scoreboard players operation @s range = .shotgunrange global
execute if entity @s[team=blue] anchored eyes facing ^0.15 ^-0.05 ^1 run function sfa:rayblue
scoreboard players operation @s range = .shotgunrange global
execute if entity @s[team=blue] anchored eyes facing ^0 ^-0.05 ^1 run function sfa:rayblue
scoreboard players operation @s range = .shotgunrange global
execute if entity @s[team=blue] anchored eyes facing ^-0.15 ^-0.05 ^1 run function sfa:rayblue
scoreboard players operation @s range = .shotgunrange global

scoreboard players set @s delay 0