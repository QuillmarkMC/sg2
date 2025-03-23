scoreboard players operation $RespawnIndex lobbyVar = @s parkourCheckpoint
execute store result storage sg:lobby_spawns index int 1 run scoreboard players remove $RespawnIndex lobbyVar 1
function sg:lobby/death/respawn/parkour/2 with storage sg:lobby_spawns