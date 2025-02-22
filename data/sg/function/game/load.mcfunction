#unload previous state
function sg:general/change_state

#set gamestate
scoreboard players operation $State gameState = $Game gameState

#generate spawn platforms BEFORE players are teleported and chests are placed 
function sg:game/spawning/platforms/begin
#set restocking BEFORE chests are generated
scoreboard players set $Restocking chestRestock 0
function sg:game/chests/restock/start
function sg:game/spawning/players/check_mode
execute as @a[tag=!SGPlaying] run function sg:game/spawning/spectating/join
function sg:game/effects/grace
gamemode adventure @a[tag=SGPlaying]
clear @a
execute as @a in overworld run spawnpoint @s 0 127 1

#map events

#timer model

#bossbar
function sg:game/border/set_game with storage sg:options Options

#set number of players
execute store result score $CurrentPlayers win if entity @a[tag=SGPlaying,gamemode=!spectator]
scoreboard players operation $ExpectedPlayers win = $CurrentPlayers win
scoreboard players operation $TotalPlayers win = $CurrentPlayers win

#update match id
scoreboard players add $Global matchID 1

gamerule fallDamage true
gamerule showDeathMessages true
gamerule naturalRegeneration true
gamerule keepInventory false
difficulty hard
time set 6000