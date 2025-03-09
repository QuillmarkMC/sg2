#this function preps join_data storage before running the normal join function
data modify storage sg:teams join_data.ID set from storage sg:teams random_data.ID
data modify storage sg:teams join_data.Name set from storage sg:teams random_data.Name
execute in the_end run function sg:lobby/teams/click_logic/join/team/get_data