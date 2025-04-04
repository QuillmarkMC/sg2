scoreboard players remove $Countdown timers 1
item modify entity @e[type=item_display,tag=SGCountdownTimer,limit=1] contents sg:timer/set_time
title @a times 5 10 5
execute if score $Countdown timers matches 1..10 run title @a title [{"score":{"name":"$Countdown","objective":"timers"},"color": "white"},{"text": "...","color": "white"}]
execute as @a at @s run playsound sg:timer.drum ambient @s ~ ~ ~ 1 1
#stopsound failsafe in case music loops on the same tick loot generation completes
stopsound @a record sg:music.loot

execute unless score $Countdown timers matches ..0 run schedule function sg:game/start_countdown/update 1s replace
execute if score $Countdown timers matches ..0 run function sg:game/start_countdown/end