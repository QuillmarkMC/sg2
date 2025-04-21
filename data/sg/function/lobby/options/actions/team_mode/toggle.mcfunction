#execute if data storage sg:options {Options:{team_mode:"solo"}} run return run function sg:lobby/options/actions/team_mode/set_team
#execute if data storage sg:options {Options:{team_mode:"team"}} run function sg:lobby/options/actions/team_mode/set_solo
