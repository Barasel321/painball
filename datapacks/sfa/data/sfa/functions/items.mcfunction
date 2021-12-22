####displays items with '/trigger items'

tellraw @s "LIST OF ITEMS:"

tellraw @s[tag=boots1] "BOOTS: DEFAULT"
tellraw @s[tag=dsound1] "DEATH SOUND: VILLAGER"
tellraw @s[tag=killquip1] "KILLQUIP: HAHA GAY"
tellraw @s[tag=pants1] "PANTS: DEFAULT"
tellraw @s[tag=rifleskin1] "RIFLE: SUPERNOVA"
tellraw @s[tag=shirt1] "CHESPLATE: SHIRT"
tellraw @s[tag=shotgunskin1] "SHOTGUN: FROSTBITE"
tellraw @s[tag=sniperskin1] "SNIPER: FADE"
tellraw @s[tag=spawnfx1] "SPAWN FX: TOTEM OF UNDYING"
tellraw @s[tag=streakfx1] "KILLSTREAK FX: MEGALOVANIA"
tellraw @s[tag=win1] "WIN FX: FIREWORK"

scoreboard players set @s items 0
scoreboard players enable @s items