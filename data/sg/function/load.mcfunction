scoreboard objectives add gameState dummy
scoreboard players set $Lobby gameState 0
scoreboard players set $Game gameState 1
scoreboard players set $Dev gameState 2
execute unless score $State gameState matches 1.. run scoreboard players operation $State gameState = $Lobby gameState

scoreboard objectives add var dummy
execute unless score $Debug var matches 1.. run scoreboard players set $Debug var 0

scoreboard objectives add math dummy
scoreboard players set #2 math 2
scoreboard players set #14 math 14
scoreboard players set #20 math 20
scoreboard players set #60 math 60
scoreboard players set #1000 math 1000

scoreboard objectives add leave minecraft.custom:minecraft.leave_game

#lobby
scoreboard objectives add lobbyVar dummy
scoreboard objectives add teams dummy
scoreboard objectives add teamID dummy
scoreboard objectives add enderClick minecraft.custom:minecraft.open_enderchest
scoreboard objectives add dropPhantom dropped:phantom_membrane
scoreboard objectives add options dummy
scoreboard objectives add teamGUI.State dummy
scoreboard objectives add teamGUI.Page dummy

#game
scoreboard objectives add platformVar dummy
execute unless score $NumPlayers platformVar matches 1.. run scoreboard players set $NumPlayers platformVar 32
execute unless score $Radius platformVar matches 1.. run scoreboard players set $Radius platformVar 31
scoreboard objectives add win dummy
scoreboard objectives add matchID dummy
execute unless score $Global matchID matches 1.. run scoreboard players set $Global matchID 0
scoreboard objectives add chestRestock dummy
scoreboard objectives add border dummy

execute unless score $SetConst var matches 1.. run function sg:general/set_const

#Teams
team add spectator
team modify spectator color dark_gray

#Forceload
function sg:general/forceload/lobby

#Gamerules
gamerule announceAdvancements false
gamerule commandBlockOutput false
gamerule disableRaids true
gamerule doDaylightCycle false
gamerule doEntityDrops false
gamerule doFireTick false
gamerule doInsomnia false
gamerule doImmediateRespawn true
gamerule doLimitedCrafting true
gamerule doMobLoot false
gamerule doMobSpawning false
gamerule doPatrolSpawning false
gamerule doTileDrops false
gamerule doTraderSpawning false
gamerule doWeatherCycle false
gamerule drowningDamage true
gamerule fireDamage true
gamerule freezeDamage true
gamerule keepInventory false
gamerule maxEntityCramming 999
gamerule mobGriefing false
gamerule playersSleepingPercentage 101
#gamerule spectatorsGenerateChunks false
#gamerule sendCommandFeedback false
gamerule spawnChunkRadius 0