#unload previous state
function sg:general/change_state

#set gamestate
scoreboard players operation $State gameState = $Game gameState

#generate spawn platforms BEFORE players are teleported and chests are placed 
function sg:game/spawning/platforms/begin
#set restocking BEFORE chests are generated
scoreboard players set $Restocking chestRestock 0
scoreboard players set $CornucopiaLootState chestRestock 0
function sg:game/chests/restock/start

#setup players
function sg:game/spawning/players/check_mode
function sg:game/spawning/spectating/init
execute as @a[tag=!SGPlaying] run function sg:game/spawning/spectating/join
effect clear @a
function sg:game/effects/grace
gamemode adventure @a[tag=SGPlaying]
clear @a
execute as @a run spawnpoint @s 0 127 1

#map events

#timer model
summon item_display 0.5 79.5 0.5 {teleport_duration:2,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},item:{id:"minecraft:pufferfish_bucket",count:1,components:{"minecraft:custom_model_data":{floats:[15]},item_model:"sg:timer"}},Tags:["SGCountdownTimer"]}
scoreboard players set $CountdownTimer.State timers 1

#bossbar
function sg:game/border/init_bossbar
function sg:game/border/set_game with storage sg:options Options

#set number of players
execute store result score $CurrentPlayers win if entity @a[tag=SGPlaying,gamemode=!spectator]
scoreboard players operation $ExpectedPlayers win = $CurrentPlayers win
scoreboard players operation $TotalPlayers win = $CurrentPlayers win

#update match id
scoreboard players add $Global matchID 1
scoreboard players operation @a matchID = $Global matchID

gamerule fallDamage true
gamerule showDeathMessages true
gamerule naturalRegeneration true
gamerule keepInventory false
difficulty hard
time set 6000
scoreboard players set $GameOver win 0