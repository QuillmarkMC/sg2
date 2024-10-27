clear @s
effect clear @s
xp set @s 0 levels
xp set @s 0 points
function sg:general/player/recipes
tag @s add SGInitSpawned
tag @s remove SGResetPlayer
tag @s remove SGPlaying
#reset scoreboards

execute if score $State gameState = $Lobby gameState run function sg:general/player/reset/lobby
execute if score $State gameState = $Game gameState run function sg:general/player/reset/game

execute at @s run spawnpoint @s ~ ~ ~ ~