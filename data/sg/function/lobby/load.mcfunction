#unload previous state
function sg:general/change_state

#set gamestate
scoreboard players operation $State gameState = $Lobby gameState

scoreboard players set $EntityLoad lobbyVar 0
scoreboard players set $EntityLoadTimer lobbyVar 0

execute in the_end run gamerule fallDamage false
execute in the_end run gamerule showDeathMessages false
execute in the_end run gamerule naturalRegeneration true
execute in the_end run gamerule keepInventory true
execute in the_end run difficulty peaceful

function sg:lobby/options/set_default
execute in the_end unless block -9 68 6 chest run setblock -9 68 6 chest[facing=west]