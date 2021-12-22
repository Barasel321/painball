execute if entity @s[team=red] if entity @e[tag=bluedoor,distance=..1] facing entity @e[tag=bluedoor,distance=..1] feet run tp ^ ^1 ^-1
execute if entity @s[team=blue] if entity @e[tag=reddoor,distance=..1] facing entity @e[tag=reddoor,distance=..1] feet run tp ^ ^1 ^-1

execute if entity @s[team=red,tag=capturer] if entity @e[tag=reddoor,distance=..1] facing entity @e[tag=reddoor,distance=..1] feet run tp ^ ^1 ^-1
execute if entity @s[team=blue,tag=capturer] if entity @e[tag=bluedoor,distance=..1] facing entity @e[tag=bluedoor,distance=..1] feet run tp ^ ^1 ^-1
