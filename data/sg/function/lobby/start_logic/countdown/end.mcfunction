title @a times 20 40 20
title @a title "\uE019"

#execute as @a[team=Random] run function sg:lobby/team_select/random/check
team join spectator @a[team=]
tag @a[team=!spectator] add SGPlaying
team leave @a[team=ready]
schedule function sg:game/load 50t