#delay summoning entities on reload
execute unless score $EntityLoad lobbyVar matches 1 if score $EntityLoadTimer lobbyVar matches 200.. run function sg:lobby/markers/delayed_load
execute unless score $EntityLoad lobbyVar matches 1 run scoreboard players add $EntityLoadTimer lobbyVar 1
#execute unless score $EntityLoad lobbyVar matches 1 if entity @a run function sg:lobby/markers/delayed_load
execute unless score $EntityLoad lobbyVar matches 1 unless score $EntityLoadTimer lobbyVar matches 140.. if entity @a run scoreboard players set $EntityLoadTimer lobbyVar 140

kill @e[type=item]