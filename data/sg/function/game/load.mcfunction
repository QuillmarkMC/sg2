#unload previous state
function sg:general/change_state

#set gamestate
scoreboard players operation $State gameState = $Game gameState

#generate spawn platforms BEFORE players are teleported and chests are placed 
function sg:game/spawning/platforms/begin
#set restocking BEFORE chests are generated
scoreboard players set $Restocking chestRestock 0
function sg:game/chests/restock/start

#player effects
#spawnpoint
#inventory
#gamemode
#spectator

#map events
#black box
#bugs
#etc

#timer model

#bossbar
function sg:game/border/set_game

#set number of players
execute store result score $CurrentPlayers win if entity @a[tag=SGPlaying,gamemode=!spectator]
scoreboard players operation $ExpectedPlayers win = $CurrentPlayers win

gamerule fallDamage true
gamerule showDeathMessages true
gamerule naturalRegeneration true
difficulty hard