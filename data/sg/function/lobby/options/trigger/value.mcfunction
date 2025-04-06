execute if entity @s[tag=SGEdit.max_team_size] run function sg:lobby/options/actions/max_team_size/trigger

function sg:lobby/options/trigger/reset_tags
scoreboard players reset @s value
