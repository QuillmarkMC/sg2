data modify storage sg:options Options.team_mode set value "solo"
tellraw @a[predicate=!sg:lobby/default_team_detect] [{"text":"[!] ","color":"blue","bold": true},{"translate": "text.lobby.teams.disband.size_changed","color": "white","bold": false}]
#TODO: combine these
execute as @a[predicate=!sg:lobby/default_team_detect] run function sg:lobby/teams/leave/return_to_default
execute as @a[team=random] run function sg:lobby/teams/leave/return_to_default
function sg:lobby/teams/reset/delete_all
execute as @a[predicate=sg:lobby/team_select] run function sg:lobby/teams/inventory/update