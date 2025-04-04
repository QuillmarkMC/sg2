data modify storage sg:options Options.team_mode set value "team"
tellraw @a[predicate=!sg:lobby/default_team_detect] [{"text":"[!] ","color":"blue","bold": true},{"translate": "text.lobby.teams.disband.size_changed","color": "white","bold": false}]
team join lobby @a[predicate=!sg:lobby/default_team_detect]
function sg:lobby/teams/reset/delete_all
