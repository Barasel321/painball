scoreboard players remove @s hold 1
scoreboard players add @s delay 1
effect give @s slowness 1 1 true

execute if score @s delay >= .minigundelay global at @s anchored eyes run function sfa:weapon/minigun/delay