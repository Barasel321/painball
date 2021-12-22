execute if score @s[scores={uses=1..}] delay >= .rifledelay global at @s anchored eyes run function sfa:weapon/rifle/uses1

scoreboard players operation @s range = .riflerange global
execute if score @s delay < .rifledelay global run scoreboard players add @s delay 1

#rifle shoot/blank
execute unless score @s[scores={skin=0}] riflekills >= max goldenwep run function sfa:inventory/rifle/rifle

execute if score @s[scores={skin=0}] riflekills >= max goldenwep run function sfa:inventory/rifle/riflegold

execute if entity @s[scores={skin=1},tag=rifleskin1] run function sfa:inventory/rifle/rifleskin1