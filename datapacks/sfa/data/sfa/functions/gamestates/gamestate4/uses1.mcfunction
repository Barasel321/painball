execute as @s[predicate=sfa:rifle] run tag @s add rifle
execute as @s[predicate=sfa:shotgun] run tag @s add shotgun
execute as @s[predicate=sfa:fusion] run tag @s add fusion
execute as @s[predicate=sfa:sniper] run tag @s add sniper
execute as @s[predicate=sfa:smg] run tag @s add smg
execute as @s[predicate=sfa:minigun] run tag @s add minigun

execute as @s[tag=rifle] run tellraw @s "You chose the assault rifle"
execute as @s[tag=rifle] run tellraw @s "Good range, good firerate, not much to say"
execute as @s[tag=rifle] run tellraw @s [{"text":"Total Rifle Kills: "},{"score":{"name":"@s","objective":"riflekills"},"color":"gold"}]

execute as @s[tag=shotgun] run tellraw @s "You chose the shotgun"
execute as @s[tag=shotgun] run tellraw @s "Most balanced gun in the game"
execute as @s[tag=shotgun] run tellraw @s [{"text":"Total Shotgun Kills: "},{"score":{"name":"@s","objective":"shotgunkills"},"color":"gold"}]

execute as @s[tag=fusion] run tellraw @s "You chose the fusion rifle"
execute as @s[tag=fusion] run tellraw @s "Hold fire to charge then fire"
execute as @s[tag=fusion] run tellraw @s [{"text":"Total Fusion Rifle Kills: "},{"score":{"name":"@s","objective":"fusionkills"},"color":"gold"}]

execute as @s[tag=sniper] run tellraw @s "You chose the sniper rifle"
execute as @s[tag=sniper] run tellraw @s "Crouch to reload, Drop to scope"
execute as @s[tag=sniper] run tellraw @s [{"text":"Total Sniper Rifle Kills: "},{"score":{"name":"@s","objective":"sniperkills"},"color":"gold"}]

execute as @s[tag=smg] run tellraw @s "You chose the sub-machine gun"
execute as @s[tag=smg] run tellraw @s "I FORGOT THAT THIS GUY DOESNT HAVE A NAME OR FACE, BUT IM KEEPING IT"
execute as @s[tag=smg] run tellraw @s [{"text":"Total SMG Kills: "},{"score":{"name":"@s","objective":"smgkills"},"color":"gold"}]

execute as @s[tag=minigun] run tellraw @s "You chose the minigun"
execute as @s[tag=minigun] run tellraw @s "Yatatatatatatata"
execute as @s[tag=minigun] run tellraw @s [{"text":"Total Minigun Kills: "},{"score":{"name":"@s","objective":"minigunkills"},"color":"gold"}]

item replace entity @s[tag=rifle] armor.head with minecraft:player_head{display: {Name: '{"text":"Soldier"}'}, SkullOwner: {Id: [I; -877846088, -1984017030, -1196969783, -1800619715], Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWQzYzRhMDhkN2YyYzc2YzFiZjIzZDdhYmU0YjIxYzBkNTY1N2M1Y2FkODNjZDY3M2Y0Y2I0OGE2YmVmOTQifX19"}]}},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s[tag=shotgun] armor.head with minecraft:player_head{display: {Name: '{"text":"Riot Gear"}'}, SkullOwner: {Id: [I; -48674930, -1522907609, -1108890627, 1246947886], Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWViMDZlOGUzNDU0ZmRjZDM0NWI4ZWExZjlhNDZiN2UzN2MxZmQ4ZTMzYWRlY2I3NWY3ODlkYmQ2NTU5NTIxIn19fQ=="}]}},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s[tag=fusion] armor.head with minecraft:player_head{display: {Name: '{"text":"Cayde-6"}'}, SkullOwner: {Id: [I; -2064175100, 1648183993, -1354361165, 891247675], Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODEwYjEwMTExNWU1ZTVlNGE0MzBkNmJlMTJlNGI2NDFjZDBmOTE4ODQ0MGZhNDgyYjNlMDZhZmJlYTg4MjNjMiJ9fX0="}]}},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s[tag=sniper] armor.head with minecraft:player_head{display: {Name: '{"text":"Sniper"}'}, SkullOwner: {Id: [I; 858125627, 237584529, -2141045275, -31427805], Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjExYmZkNGUyNGZiN2Y1NmRlODg2YzZlMjkyYzM2ZWI3OGNkN2U1NDE3Y2E5YTA2Yzg1ZWE2YzlmOGFiNDcifX19"}]}},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s[tag=smg] armor.head with minecraft:player_head{display: {Name: '{"text":"Question Mark"}'}, SkullOwner: {Id: [I; 1467095237, 664423467, -1694618179, 1100904759], Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWNjNThjYjU1YjFhMTFlNmQ4OGMyZDRkMWE2MzY2YzIzODg3ZGVlMjYzMDRiZGE0MTJjNGE1MTgyNWYxOTkifX19"}]}},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s[tag=minigun] armor.head with minecraft:player_head{display: {Name: '{"text":"Heavy"}'}, SkullOwner: {Id: [I; 1389117073, -978696680, -1376771403, 2041108007], Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDRlNjNmZDdjNDhlYmU3YTlmZmJmNzEzYjVkODdhYmRjYTYxYzhhMWRmMzE2YTlmMTYyY2U1ZGI2MjViM2YifX19"}]}},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

item replace entity @s[team=red,tag=!shirt1] armor.chest with leather_chestplate{display: {color: 11546150}, HideFlags: 127, AttributeModifiers: [{AttributeName: "generic.armor", Name: "generic.armor", Amount: 0, Operation: 0, UUID: [I; 1308565363, -702788251, -1115839037, -359084804], Slot: "chest"}],Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s[team=blue,tag=!shirt1] armor.chest with leather_chestplate{display: {color: 3847130}, HideFlags: 127, AttributeModifiers: [{AttributeName: "generic.armor", Name: "generic.armor", Amount: 0, Operation: 0, UUID: [I; 1308565363, -702788251, -1115839037, -359084814], Slot: "chest"}],Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

execute as @s[tag=shirt1] run function sfa:cosmetics/shirt1
execute as @s[tag=pants1] run function sfa:cosmetics/pants1
execute as @s[tag=boots1] run function sfa:cosmetics/boots1

tag @s add active
execute as @s[predicate=sfa:locked] run tag @s remove active
execute as @s[predicate=sfa:locked] run tellraw @s {"text":"You don't have that","color":"gray","italic":true}
execute as @s[tag=active] run clear