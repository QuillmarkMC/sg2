#called with sg:teams join_data
$team join $(ID) @s
$scoreboard players set @s teamID $(ID)
$tellraw @s [{"text":"[!] ","color":"blue","bold": true},{"translate":"text.lobby.teams.join","color":"white","bold": false,"with": [{"text": "$(Name)"}]}]
execute as @a[predicate=sg:lobby/team_select] run function sg:lobby/teams/inventory/update