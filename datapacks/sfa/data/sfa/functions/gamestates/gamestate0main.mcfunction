####PRESTART GAMESTATE
#aka lobby gamestate

scoreboard players set @a delay 0
scoreboard players set @a kills 0
scoreboard players set @a killstreak 0
scoreboard players set @a uses 0
scoreboard players set @a burst 0
scoreboard players set @a drop 0

#hard exception for me cus screw u guys
execute as @a[x=-50,y=20,z=-20,dx=100,dy=80,dz=180] run clear
execute as @a[x=-50,y=20,z=-20,dx=100,dy=80,dz=180,name=!"Barasel321"] run kill
execute as @a[x=-40,y=20,z=-200,dx=80,dy=10,dz=170] run kill

tag @a[tag=active] remove active

tag @a[tag=rifle] remove rifle
tag @a[tag=shotgun] remove shotgun
tag @a[tag=fusion] remove fusion
tag @a[tag=sniper] remove sniper
tag @a[tag=smg] remove smg
tag @a[tag=minigun] remove minigun

tag @a[tag=capturer] remove capturer
tag @a[tag=mvp] remove mvp

#hard exception for me cus screw u guys
gamemode adventure @a[name=!"Barasel321"]

function sfa:gold/goldmain