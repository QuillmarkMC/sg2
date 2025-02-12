execute store result score $RespawnIndex lobbyVar run data get storage sg:lobby_spawns arena
execute store result storage sg:lobby_spawns index int 1 run scoreboard players remove $RespawnIndex lobbyVar 1
function sg:lobby/respawn/arena/2 with storage sg:lobby_spawns