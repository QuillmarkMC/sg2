execute if score $Debug var matches 2.. run say sg:lobby/teams/click_logic/join/team/get_data

#executed in the_end
item replace block -9 68 6 container.0 from entity @s player.cursor
data modify storage sg:teams join_data.ID set from block -9 68 6 Items[0].components.minecraft:custom_data.id
data modify storage sg:teams join_data.Name set from block -9 68 6 Items[0].components.minecraft:custom_data.name

function sg:lobby/teams/click_logic/join/team/check_size with storage sg:teams join_data