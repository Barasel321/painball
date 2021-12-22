scoreboard players remove @s hold 1
scoreboard players add @s delay 1

execute if score @s delay >= .fusiondelay global at @s anchored eyes run function sfa:weapon/fusion/delay