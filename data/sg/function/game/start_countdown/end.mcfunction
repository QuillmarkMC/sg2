#PLAYERS RELEASED, GAME BEGINS
#start grace period
#tellraw @a [{"text": ""},{"text":"[!] ","color":"yellow","bold": true},{"translate":"text.game.begin1"},{"score":{"name":"$grace_period","objective":"options"}},{"translate":"text.game.begin2"}]
#scoreboard players operation $countdown countdown = $grace_period options
#function sg:game/starting/grace/countdown
#scoreboard players set $Heartbeat countdown 0

#VFX
summon lightning_bolt 0 71 0
execute as @a at @s run playsound block.anvil.place record @s ~ ~ ~ 0.75

#Unleash the beasts
execute as @a[tag=SGPlaying,gamemode=!spectator] at @s positioned ~-1 ~11 ~-1 run fill ~3 ~5 ~3 ~ ~ ~ air replace barrier

#assign match IDs to handle reconnecting players
scoreboard players operation @a matchID = $Global matchID

#destroy timer model
kill @e[type=item_display,tag=SGCountdownTimer,limit=1]
scoreboard players set $CountdownTimerActivated timers 0

#bossbar
function sg:game/border/state/grace with storage sg:options Options

#schedule chest restock
function sg:game/chests/restock/schedule with storage sg:options Options