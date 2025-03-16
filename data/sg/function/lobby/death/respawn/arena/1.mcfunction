execute store result score $RespawnIndex lobbyVar run data get storage sg:lobby_spawns arena
execute store result storage sg:lobby_spawns index int 1 run scoreboard players remove $RespawnIndex lobbyVar 1
function sg:lobby/death/respawn/arena/2 with storage sg:lobby_spawns

scoreboard players operation @s inventoryState = $Lobby.Default inventoryState
tag @s remove SGArenaFighter