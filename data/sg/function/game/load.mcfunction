#unload previous state

#set gamestate
scoreboard players operation $State gameState = $Game gameState

#set restocking BEFORE chests are generated
scoreboard players set $Restocking chestRestock 0
function sg:game/chests/restock/start
#generate spawn platforms

#map events
#black box
#bugs
#etc

#bossbar
function sg:game/border/set_game

#set number of players
execute store result score $CurrentPlayers win if entity @a[tag=SGPlaying,gamemode=!spectator]
scoreboard players operation $ExpectedPlayers win = $CurrentPlayers win

gamerule fallDamage true
gamerule showDeathMessages true
gamerule naturalRegeneration true
difficulty hard