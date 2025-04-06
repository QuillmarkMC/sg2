#called every tick after a game load, check to make sure all chunks with map events are loaded before resetting
scoreboard players set $CheckLoaded var 1

#library maze
execute unless loaded -350 82 -287 run scoreboard players set $CheckLoaded var 0

#donut exit
execute unless loaded -354 91 199 run scoreboard players set $CheckLoaded var 0

#donut entrance
execute unless loaded -342 106 300 run scoreboard players set $CheckLoaded var 0
execute unless loaded -342 106 306 run scoreboard players set $CheckLoaded var 0

execute if score $CheckLoaded var matches 0 run schedule function sg:game/map_events/check_loaded 1t
execute if score $CheckLoaded var matches 1 run function sg:game/map_events/reset_all