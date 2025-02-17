#called with sg:teams join_data
$team join $(ID) @s
$scoreboard players set @s teamID $(ID)
$tellraw @s "You joined $(Name)'s team"