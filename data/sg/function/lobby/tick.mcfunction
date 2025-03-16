#delay summoning entities on reload
execute unless score $EntityLoad lobbyVar matches 1 if score $EntityLoadTimer lobbyVar matches 200.. run function sg:lobby/markers/delayed_load
execute unless score $EntityLoad lobbyVar matches 1 run scoreboard players add $EntityLoadTimer lobbyVar 1
#execute unless score $EntityLoad lobbyVar matches 1 if entity @a run function sg:lobby/markers/delayed_load
execute unless score $EntityLoad lobbyVar matches 1 unless score $EntityLoadTimer lobbyVar matches 140.. if entity @a run scoreboard players set $EntityLoadTimer lobbyVar 140

#tick team selection chest for nearby players
execute as @a[predicate=sg:lobby/team_select] run function sg:lobby/teams/tick

#check if a team lead disconnected, disband their team if true
function sg:lobby/teams/leaders/tick

#check if a player left the arena without dying
execute as @a[tag=SGArenaFighter,predicate=!sg:lobby/arena/deserter] unless score @s death matches 1.. run function sg:lobby/arena/deserter

#check if player entered arena
execute as @a[tag=!SGArenaFighter,predicate=sg:lobby/arena/enter,gamemode=!spectator] run function sg:lobby/arena/enter

#respawn dead players (place anytime after arena entrance check)
execute as @a[scores={death=1..}] run function sg:lobby/death/on_death

kill @e[type=item]