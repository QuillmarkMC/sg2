kill @e[type=marker,tag=SGSpawnMarker]

scoreboard players reset * death
scoreboard players reset * deathDelayTimer
scoreboard players reset * playerPosition
scoreboard players reset * combatTimer

schedule clear sg:game/end_game/end/fireworks/schedule
schedule clear sg:game/chests/restock/start
schedule clear sg:game/grace/count
schedule clear sg:game/border/update
schedule clear sg:game/border/state/prep_shrink
schedule clear sg:lobby/load
schedule clear sg:game/end_game/end/transition
schedule clear sg:game/start_countdown/update

bossbar set sg:border visible false
bossbar set sg:loot visible false

tag @a add SGResetPlayer