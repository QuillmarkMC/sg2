#PLAYERS RELEASED, GAME BEGINS
#start grace period
tellraw @a [{"text":"[!] ","color":"yellow","bold": true},{"translate":"text.game.begin","bold": false,"with": [{"nbt": "Options.grace_period","storage": "sg:options"}],"color": "white"}]
execute store result score $Countdown timers run data get storage sg:options Options.grace_period
function sg:game/grace/count

#VFX
summon lightning_bolt 0 71 0
execute as @a at @s run playsound block.anvil.place record @s ~ ~ ~ 0.75

#Unleash the beasts
execute as @a[tag=SGPlaying,gamemode=!spectator] at @s run fill ~1 ~3 ~1 ~-1 ~-2 ~-1 air replace barrier

#assign match IDs to handle reconnecting players
scoreboard players operation @a matchID = $Global matchID

#destroy timer model
kill @e[type=item_display,tag=SGCountdownTimer,limit=1]
scoreboard players set $CountdownTimerActivated timers 0

#bossbar
function sg:game/border/state/grace with storage sg:options Options

#schedule chest restock
function sg:game/chests/restock/schedule with storage sg:options Options