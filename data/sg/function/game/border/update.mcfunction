scoreboard players remove $Timer border 1
execute store result score $Size border run worldborder get

execute if score $Size border matches ..40 unless score $State border = $Deathmatch border run function sg:game/border/state/deathmatch

execute if score $State border = $Grace border run function sg:game/border/render/grace
execute if score $State border = $Shrink border run function sg:game/border/render/shrink
execute if score $State border = $Deathmatch border run function sg:game/border/render/deathmatch

execute unless score $Timer border matches ..-1 run schedule function sg:game/border/update 1s
