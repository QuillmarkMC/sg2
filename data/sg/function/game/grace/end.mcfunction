tellraw @a [{"text":"[!] ","color":"yellow","bold": true},{"translate":"text.game.pvp_grace.end","bold": false,"color": "white"}]
execute as @a at @s run playsound entity.ender_dragon.growl record @s ~ ~ ~ 0.75
function sg:game/effects/clear_grace