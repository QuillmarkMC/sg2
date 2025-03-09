#called with sg:teams find_leader_team_data
$execute store result storage sg:teams find_leader_team_data.ID int 1 run data get storage sg:teams Teams[$(Index)].id
function sg:lobby/teams/leaders/find_team/check_id with storage sg:teams find_leader_team_data