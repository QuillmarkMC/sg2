#unload previous state

#set gamestate
scoreboard players operation $State gameState = $Lobby gameState

scoreboard players set $EntityLoad lobbyVar 0
scoreboard players set $EntityLoadTimer lobbyVar 0

gamerule fallDamage false
gamerule showDeathMessages false
gamerule naturalRegeneration true
difficulty peaceful