tp @s 0.5 61.0 0.5 90.0 0.0
function sg:lobby/effects/give
scoreboard players reset @s enderClick
advancement grant @s only sg:inv_changed
gamemode adventure
team join lobby