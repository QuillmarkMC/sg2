execute if score $Debug var matches 2.. run say sg:lobby/teams/leave/individual
#check how many players remaining on team, if @s is the last one then disband team
#check if @s was team leader, if yes then disband team

#scoreboard players reset #DisbandTeam lobbyVar
#scoreboard players reset #TempTeamSize lobbyVar

#TODO: remove this since its redundant
#scoreboard players operation $TeamLeaveID lobbyVar = @s teamID
#execute as @a if score @s teamID = $TeamLeaveID lobbyVar run scoreboard players add #TempTeamSize lobbyVar 1
#execute if score #TempTeamSize lobbyVar matches ..1 run scoreboard players set #DisbandTeam lobbyVar 1

#execute if entity @s[tag=SGTeamLead] run scoreboard players set #DisbandTeam lobbyVar 1
#execute if score #DisbandTeam lobbyVar matches 1 run function sg:lobby/teams/leave/disband

execute if entity @s[tag=SGTeamLead] run function sg:lobby/teams/leave/disband

function sg:lobby/teams/leave/return_to_default