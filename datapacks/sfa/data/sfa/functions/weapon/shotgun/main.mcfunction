execute if score @s[scores={uses=1..}] delay >= .shotgundelay global at @s anchored eyes run function sfa:weapon/shotgun/uses1

execute if score @s delay < .shotgundelay global run scoreboard players add @s delay 1

#shotgun shoot/blank
execute unless score @s[scores={skin=0}] shotgunkills >= max goldenwep run function sfa:inventory/shotgun/shotgun

execute if score @s[scores={skin=0}] shotgunkills >= max goldenwep run function sfa:inventory/shotgun/shotgungold

execute if entity @s[scores={skin=1},tag=shotgunskin1] run function sfa:inventory/shotgun/shotgunskin1