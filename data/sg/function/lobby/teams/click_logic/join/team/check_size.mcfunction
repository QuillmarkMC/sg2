#prevent player from joining a full team
#called with sg:teams join_data

$execute store result score #TempTeam teamID if entity @a[team=$(ID)]
#no join
execute if score #TempTeam teamID >= $MaxTeamSize options
#yes join
execute unless score #TempTeam teamID >= $MaxTeamSize options run function sg:lobby/teams/click_logic/join/team/allow with storage sg:teams join_data