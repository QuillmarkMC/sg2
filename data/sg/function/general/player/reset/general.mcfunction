clear @s
effect clear @s
xp set @s 0 levels
xp set @s 0 points
function sg:general/player/recipes
team leave @s
tag @s add SGInitSpawned
tag @s remove SGResetPlayer
tag @s remove SGPlaying
tag @s remove SGNotSpawned
tag @s remove SGWinner
tag @s remove SGOutOfBounds
tag @s remove SGTeamLead
scoreboard players reset @s teamID

execute if score $State gameState = $Lobby gameState run function sg:general/player/reset/lobby
execute if score $State gameState = $Game gameState run function sg:general/player/reset/game

execute at @s run spawnpoint @s ~ ~ ~ ~