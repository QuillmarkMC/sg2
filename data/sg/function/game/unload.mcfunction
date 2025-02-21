kill @e[type=marker,tag=SGSpawnMarker]

scoreboard players reset * death
scoreboard players reset * deathDelayTimer
scoreboard players reset * playerPosition
scoreboard players reset * combatTimer

schedule clear sg:game/end_game/end/fireworks/schedule
schedule clear sg:game/chests/restock/start

tag @a add SGResetPlayer