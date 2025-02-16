#executed in the_end
item replace block -9 68 6 container.0 from entity @s player.cursor
data modify storage sg:teams new_data.Color set from block -9 68 6 Items[0].components.minecraft:custom_data.Color

item replace block -9 68 6 container.0 with air
loot insert -9 68 6 loot sg:lobby/player_head
data modify storage sg:teams new_data.Name set from block -9 68 6 Items[0].components.minecraft:profile.name

execute store result storage sg:teams new_data.ID int 1 run scoreboard players add $Next teamID 1

function sg:lobby/teams/click_logic/create/new with storage sg:teams new_data