execute if data storage sg:options {Options:{team_mode:"solo"}} run return run data modify storage sg:options Options.team_mode set value "team"
execute if data storage sg:options {Options:{team_mode:"team"}} run data modify storage sg:options Options.team_mode set value "solo"
