#PLAYERS RELEASED, GAME BEGINS
#start grace period
tellraw @a [{"text":"[!] ","color":"yellow","bold": true},{"translate":"text.game.begin","bold": false,"with": [{"storage": "sg:options","nbt": "Options.grace_period"}],"color": "white"}]
execute store result score $Countdown timers run data get storage sg:options Options.grace_period
function sg:game/grace/count
execute as @a at @s run playsound sg:music.grace record @s ~ ~ ~ 1.2 1

#VFX
summon lightning_bolt 0 71 0
execute as @a at @s run playsound block.anvil.place ambient @s ~ ~ ~ 0.75

#Unleash the beasts
execute as @a[tag=SGPlaying,gamemode=!spectator] at @s run fill ~1 ~3 ~1 ~-1 ~-2 ~-1 air replace barrier

#destroy timer model
kill @e[type=item_display,tag=SGCountdownTimer,limit=1]
scoreboard players set $CountdownTimer.State timers 0

#bossbar
function sg:game/border/state/grace with storage sg:options Options

#schedule chest restock
execute unless data storage sg:options {Options:{chest_restock_mode:"none"}} run function sg:game/chests/restock/schedule with storage sg:options Options