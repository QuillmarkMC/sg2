execute at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1
execute if score @s value matches ..0 run scoreboard players set @s value 1
execute store result storage sg:options Options.max_team_size int 1 run scoreboard players operation $MaxTeamSize options = @s value
function sg:lobby/options/display/individual/max_team_size

execute as @a[predicate=!sg:lobby/default_team_detect] run function sg:lobby/teams/leave/return_to_default
function sg:lobby/teams/reset/delete_all

execute as @a[predicate=sg:lobby/team_select] run function sg:lobby/teams/inventory/update