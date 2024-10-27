#wait to load entities on /reload until we are sure the server has loaded them
#contains all of the init functions that would normally be in the lobby/load function, but summons entities
scoreboard players set $EntityLoad lobbyVar 1

execute in the_end run function sg:lobby/markers/summon