execute store result storage sg:timer value int 1.0 run scoreboard players remove $Countdown timers 1
data modify entity @e[type=item_display,tag=SGCountdownTimer,limit=1] item.components.minecraft:custom_model_data.floats[0] set from storage sg:timer value
item modify entity @e[type=item_display,tag=SGCountdownTimer,limit=1] contents sg:timer/set_time
title @a times 5 10 5
execute if score $Countdown timers matches 1..10 run title @a title [{"score":{"name":"$Countdown","objective":"timers"},"color": "white"},{"text": "...","color": "white"}]
#TODO: drum sound countdown
#TODO: stopsound on looping loot generation music

#execute if score $Countdown timers matches 19 run schedule function sg:game/starting/countdown_music 17t

execute unless score $Countdown timers matches ..0 run schedule function sg:game/start_countdown/update 1s replace
execute if score $Countdown timers matches ..0 run function sg:game/start_countdown/end