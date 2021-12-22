#these functions need to run near the golden weapon cases (?) just an idea, fix them + remove "#"
#make sure you run these only when gamestate = shop or whatever
execute at @e[tag=gdisplayrifle] as @a[distance=..2] run function sfa:gold/showrifle
execute at @e[tag=gdisplayshotgun] as @a[distance=..2] run function sfa:gold/showshotgun
execute at @e[tag=gdisplaysmg] as @a[distance=..2] run function sfa:gold/showsmg
execute at @e[tag=gdisplaysniper] as @a[distance=..2] run function sfa:gold/showsniper
execute at @e[tag=gdisplayfusion] as @a[distance=..2] run function sfa:gold/showfusion
execute at @e[tag=gdisplayminigun] as @a[distance=..2] run function sfa:gold/showminigun
#run this function after every kill/shot for optimization