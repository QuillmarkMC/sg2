scoreboard players set $Countdown timers -1

schedule clear sg:game/load
schedule clear sg:lobby/start_logic/countdown/count
function sg:lobby/arena/uninit
stopsound @a record sg:music.lobby