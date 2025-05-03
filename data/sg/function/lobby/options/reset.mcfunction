data modify storage sg:options Options set from storage sg:options Defaults
execute store result score $MaxTeamSize options run data get storage sg:options Options.max_team_size

execute unless score $Locked options matches 1.. run scoreboard players set $Locked options 0