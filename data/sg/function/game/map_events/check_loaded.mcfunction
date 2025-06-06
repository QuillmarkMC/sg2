#called every tick after a game load, check to make sure all chunks with map events are loaded before resetting
scoreboard players set $CheckLoaded var 1

#library attic
execute unless loaded -372 82 -296 run scoreboard players set $CheckLoaded var 0
execute unless loaded -335 82 -296 run scoreboard players set $CheckLoaded var 0

#donut exit
execute unless loaded -354 91 199 run scoreboard players set $CheckLoaded var 0

#donut entrance
execute unless loaded -342 106 300 run scoreboard players set $CheckLoaded var 0
execute unless loaded -342 106 306 run scoreboard players set $CheckLoaded var 0

#guapo's castle
execute unless loaded -514 59 -340 run scoreboard players set $CheckLoaded var 0

#temple pit

execute unless loaded 227 68 132 run scoreboard players set $CheckLoaded var 0

execute if score $CheckLoaded var matches 0 run schedule function sg:game/map_events/check_loaded 1t
execute if score $CheckLoaded var matches 1 run function sg:game/map_events/reset_all