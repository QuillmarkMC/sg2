scoreboard players set $Countdown timers -1
schedule clear sg:lobby/start_logic/countdown/count
tellraw @a {"translate":"text.lobby.start.cancel.success","color":"white","with": [{"selector": "@s"}]}