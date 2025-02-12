#called with sg:lobby_spawns
$execute store result storage sg:lobby_spawns index run random value 0..$(index)
function sg:lobby/respawn/arena/3 with storage sg:lobby_spawns