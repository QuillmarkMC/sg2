#called with sg:lobby_spawns
$data modify storage sg:lobby_spawns pos set from storage sg:lobby_spawns arena[$(index)]
function sg:lobby/respawn/player with storage sg:lobby_spawns