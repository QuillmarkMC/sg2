scoreboard players set $Countdown timers -1
schedule clear sg:lobby/start_logic/countdown/count
#tellraw @a [{"text": "<","color": "white"},{"selector":"@s"},{"text": ">","color": "white"},{"translate":"text.lobby.start.cancel","color":"white"}]