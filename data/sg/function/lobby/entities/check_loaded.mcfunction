#called every tick after a lobby load, check to make sure all chunks with entities are loaded before killing/summoning new ones
scoreboard players set $CheckLoaded var 1

#TODO: add the rest of the lobby entities
#options board
execute unless loaded 35527 61 35505 run scoreboard players set $CheckLoaded var 0
execute unless loaded 35527 61 35498 run scoreboard players set $CheckLoaded var 0
execute unless loaded 35527 61 35483 run scoreboard players set $CheckLoaded var 0

execute if score $CheckLoaded var matches 0 run schedule function sg:lobby/entities/check_loaded 1t
execute if score $CheckLoaded var matches 1 run function sg:lobby/entities/summon