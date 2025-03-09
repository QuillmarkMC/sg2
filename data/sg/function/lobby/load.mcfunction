#unload previous state
function sg:general/change_state

#set gamestate
scoreboard players operation $State gameState = $Lobby gameState

function sg:game/border/set_lobby

scoreboard players set $EntityLoad lobbyVar 0
scoreboard players set $EntityLoadTimer lobbyVar 0
scoreboard players set $Countdown timers -1
scoreboard players set $ExpectedTeamLeads lobbyVar 0
scoreboard players set $CurrentTeamLeads lobbyVar 0

execute in the_end run gamerule fallDamage false
execute in the_end run gamerule showDeathMessages false
execute in the_end run gamerule naturalRegeneration true
execute in the_end run gamerule keepInventory true
execute in the_end run difficulty peaceful

#function sg:lobby/options/set_default
function sg:lobby/teams/reset/delete_all
function sg:lobby/teams/random/init
execute in the_end unless block -9 68 6 chest run setblock -9 68 6 chest[facing=west]