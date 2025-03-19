#called with sg:parkour
$execute positioned $(Pos) if entity @s[distance=..1.5] run function sg:lobby/parkour/checkpoint/collect
$execute positioned $(Pos) run particle glow ~ ~ ~ 0.1 0.1 0.1 1 1 force @s