execute if items entity @s player.cursor phantom_membrane[minecraft:custom_data~{Previous:true}] run function sg:lobby/teams/click_logic/navigation/previous
execute if items entity @s player.cursor phantom_membrane[minecraft:custom_data~{Next:true}] run function sg:lobby/teams/click_logic/navigation/next

item replace entity @s player.cursor with air