title @s times 0 40 20
title @s title "\uE019"

function sg:lobby/effects/give

tellraw @a {"translate": "text.lobby.death_message","with": [{"selector": "@s"}]}

#set inventory state inside respawn state function
#execute if score @s respawnState = $Lobby.Default respawnState run tp @s 35531.5 60.0 35496.5 90.0 0.0
execute if score @s respawnState = $Lobby.Arena respawnState run function sg:lobby/death/respawn/arena/1
execute if score @s respawnState = $Lobby.Parkour respawnState run function sg:lobby/death/respawn/parkour/1

advancement grant @s only sg:inv_changed
scoreboard players set @s death 0
