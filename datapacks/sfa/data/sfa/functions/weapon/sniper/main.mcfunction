execute if score @s[scores={uses=1..}] delay >= .sniperdelay global at @s anchored eyes run function sfa:weapon/sniper/uses1

#zoom funcs
execute if entity @s[scores={drop=1}] run effect give @s slowness 2 6 true
execute if entity @s[scores={drop=2..}] run effect clear @s slowness
execute if score @s[scores={drop=1..}] delay < .sniperdelay global run effect clear @s slowness
execute if score @s[scores={drop=1..}] delay < .sniperdelay global run scoreboard players set @s drop 0
execute if entity @s[scores={drop=2..}] run scoreboard players set @s drop 0


scoreboard players operation @s range = .sniperrange global
execute if score @s[predicate=sfa:sneaking] delay < .sniperdelay global run scoreboard players add @s delay 1

#sniper blank/zoomblank/shoot/zoomshoot
execute unless score @s[scores={skin=0}] sniperkills >= max goldenwep run function sfa:inventory/sniper/sniper

execute if score @s[scores={skin=0}] sniperkills >= max goldenwep run function sfa:inventory/sniper/snipergold

execute if entity @s[scores={skin=1},tag=sniperskin1] run function sfa:inventory/sniper/sniperskin1