# @s = player who was automatically assigned to spectators due to player cap
tellraw @a [{"text":"[!] ","color":"gray","bold": true},{"translate":"text.game.spectator.overflow","bold": false,"color": "white"}]

tag @s remove SGPlaying
team join spectator
function sg:game/spawning/spectating/join