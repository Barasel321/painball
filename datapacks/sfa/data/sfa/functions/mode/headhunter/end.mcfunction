execute if score red teamheads > blue teamheads run function sfa:mode/headhunter/redwin
execute if score blue teamheads > red teamheads run function sfa:mode/headhunter/bluewin
execute if score red teamheads = blue teamheads run function sfa:mode/headhunter/tie
title @a subtitle [{"score":{"name":".redwin","objective":"global"},"color":"red"},{"text":" - ","color":"white"},{"score":{"name":".bluewin","objective":"global"},"color":"blue"}]