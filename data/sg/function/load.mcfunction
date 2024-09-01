scoreboard objectives add gameState dummy
scoreboard players set $Lobby gameState 0
scoreboard players set $Game gameState 1
execute unless score $State gameState = $Game gameState run scoreboard players operation $State gameState = $Lobby gameState
scoreboard objectives add var dummy
execute unless score $Debug var matches 1.. run scoreboard players set $Debug var 0
scoreboard objectives add platformVar dummy
execute unless score $NumPlayers platformVar matches 1.. run scoreboard players set $NumPlayers platformVar 32
execute unless score $Radius platformVar matches 1.. run scoreboard players set $Radius platformVar 31
scoreboard objectives add math dummy
scoreboard players set #1000 math 1000