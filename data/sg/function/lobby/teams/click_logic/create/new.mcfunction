execute if score $Debug var matches 1.. run say sg:lobby/teams/click_logic/create/new
# @s = player creating the team
#called with sg:teams new_data

$team add $(ID)
$team modify $(ID) color $(Color)
$team modify $(ID) friendlyFire false
#team modify $(ID) prefix ""

$data modify storage sg:teams Teams append value {\
    id:$(ID),\
    name:$(Name),\
    color:$(Color)\
}

data modify storage sg:teams join_data set from storage sg:teams new_data
function sg:lobby/teams/click_logic/join/team/get_data with storage sg:teams join_data

scoreboard players set @s teamGUI.State 1
#dirty hack to put player on the last gui page
execute store result score @s teamGUI.Page run data get storage sg:teams Teams
function sg:lobby/teams/click_logic/navigation/next