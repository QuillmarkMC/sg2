execute if items entity @s player.cursor phantom_membrane[minecraft:custom_data~{Previous:true}] run function sg:lobby/teams/click_logic/navigation/previous
execute if items entity @s player.cursor phantom_membrane[minecraft:custom_data~{Next:true}] run function sg:lobby/teams/click_logic/navigation/next
execute if items entity @s player.cursor phantom_membrane[minecraft:custom_data~{Back:true}] run function sg:lobby/teams/click_logic/navigation/back_to_main
execute if items entity @s player.cursor phantom_membrane[minecraft:custom_data~{NewTeam:true}] run function sg:lobby/teams/click_logic/create/prompt
execute if items entity @s player.cursor phantom_membrane[minecraft:custom_data~{CreateTeam:true}] in the_end run function sg:lobby/teams/click_logic/create/get_data
execute if items entity @s player.cursor phantom_membrane[minecraft:custom_data~{JoinTeam:true}] in the_end run function sg:lobby/teams/click_logic/join/team/get_data

item replace entity @s player.cursor with air
function sg:lobby/teams/inventory/update