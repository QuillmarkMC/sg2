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
scoreboard objectives add teamID dummy
scoreboard objectives add enderClick minecraft.custom:minecraft.open_enderchest
scoreboard objectives add dropPhantom dropped:phantom_membrane
scoreboard objectives add options dummy
scoreboard objectives add teamGUI.State dummy
scoreboard objectives add teamGUI.Page dummy
scoreboard objectives add inventoryState dummy
scoreboard players set $Lobby.Default inventoryState 0
scoreboard players set $Lobby.Arena inventoryState 1
scoreboard objectives add respawnState dummy
scoreboard players set $Lobby.Default respawnState 0
scoreboard players set $Lobby.Arena respawnState 1
scoreboard objectives add parkour dummy

#game
scoreboard objectives add platformVar dummy
execute unless score $Radius platformVar matches 1.. run scoreboard players set $Radius platformVar 31
scoreboard objectives add win dummy
scoreboard objectives add matchID dummy
execute unless score $Global matchID matches 1.. run scoreboard players set $Global matchID 0
scoreboard objectives add chestRestock dummy
scoreboard objectives add border dummy
scoreboard objectives add death deathCount
scoreboard objectives add deathDelayTimer dummy
scoreboard objectives add playerPosition dummy
scoreboard objectives add combatTimer dummy
scoreboard players set $CombatCooldown combatTimer 100
scoreboard objectives add oob dummy
scoreboard objectives add timers dummy
scoreboard players set $LobbyCountdown timers 10
scoreboard players set $TotalFireworks var 3

execute unless score $SetConst var matches 1.. run function sg:general/set_const

function sg:lobby/options/set_default

#Teams
team add spectator
team modify spectator color dark_gray
team modify spectator collisionRule never
team add ready
team modify ready color dark_green
team modify ready collisionRule never
team add lobby
team modify lobby color white
team modify lobby collisionRule never
team add random
team modify random color light_purple
team modify random collisionRule never

#Forceload
function sg:general/forceload/lobby
function sg:general/forceload/cornucopia

#bossbar
function sg:game/border/init_bossbar

#Gamerules
function sg:general/gamerules
