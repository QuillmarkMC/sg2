tellraw @a [{"text":"[!] ","color":"yellow","bold": true},{"translate":"sg.game.begin","bold": false,"with": [{"storage": "sg:options","nbt": "Options.grace_period"}],"color": "white"}]
execute store result score $Countdown timers run data get storage sg:options Options.grace_period

scoreboard players operation $PvpGrace.Half timers = $Countdown timers
scoreboard players operation $PvpGrace.Quarter timers = $Countdown timers
scoreboard players operation $PvpGrace.Half timers /= #2 math
scoreboard players operation $PvpGrace.Quarter timers /= #4 math

function sg:game/grace/count
execute as @a at @s run playsound sg:music.grace record @s ~ ~ ~ 1.2 1