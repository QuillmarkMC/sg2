kill @e[type=marker,tag=SGSpawnMarker]
kill @e[type=item_display,tag=SGCountdownTimer,limit=1]

scoreboard players reset * death
scoreboard players reset * deathDelayTimer
scoreboard players reset * playerPosition
scoreboard players reset * combatTimer
scoreboard players set $CountdownTimer.State timers 0

function sg:game/map_events/unload

schedule clear sg:game/end_game/end/fireworks/schedule
schedule clear sg:game/chests/restock/start
schedule clear sg:game/grace/count
schedule clear sg:game/border/update
schedule clear sg:game/border/state/prep_shrink
schedule clear sg:lobby/load
schedule clear sg:game/end_game/end/transition
schedule clear sg:game/start_countdown/update
schedule clear sg:game/chests/music/loop
schedule clear sg:game/map_events/check_loaded

bossbar set sg:border visible false
bossbar set sg:loot visible false

tag @a add SGResetPlayer

stopsound @a record sg:music.deathmatch
stopsound @a record sg:music.grace
stopsound @a record sg:music.stinger
stopsound @a record sg:music.loot