execute if score @s[scores={uses=1..}] delay >= .smgdelay global at @s anchored eyes run function sfa:weapon/smg/uses1

scoreboard players operation @s range = .smgrange global
execute if score @s delay < .smgdelay global run scoreboard players add @s delay 1

#smg shoot/blank
execute unless score @s[scores={skin=0}] smgkills >= max goldenwep run function sfa:inventory/smg/smg

execute if score @s[scores={skin=0}] smgkills >= max goldenwep run function sfa:inventory/smg/smggold

execute if entity @s[scores={skin=1},tag=smgskin1] run function sfa:inventory/smg/smgskin1