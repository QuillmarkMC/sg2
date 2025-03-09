#delay summoning entities on reload
execute unless score $EntityLoad lobbyVar matches 1 if score $EntityLoadTimer lobbyVar matches 200.. run function sg:lobby/markers/delayed_load
execute unless score $EntityLoad lobbyVar matches 1 run scoreboard players add $EntityLoadTimer lobbyVar 1
#execute unless score $EntityLoad lobbyVar matches 1 if entity @a run function sg:lobby/markers/delayed_load
execute unless score $EntityLoad lobbyVar matches 1 unless score $EntityLoadTimer lobbyVar matches 140.. if entity @a run scoreboard players set $EntityLoadTimer lobbyVar 140

#tick team selection chest for nearby players
execute as @a[predicate=sg:lobby/team_select] run function sg:lobby/teams/tick

#check if a team lead disconnected, disband their team if true
function sg:lobby/teams/leaders/tick

kill @e[type=item]