title @a times 20 40 20
title @a title "\uE019"

execute as @a[team=random] run function sg:lobby/teams/random/find_team
team join spectator @a[team=lobby]
tag @a[team=!spectator] add SGPlaying
team leave @a[team=ready]
schedule function sg:game/load 50t