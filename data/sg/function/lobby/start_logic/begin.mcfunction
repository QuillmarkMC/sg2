tellraw @a [{"text":"[!] ","color":"aqua","bold": true},{"translate":"text.lobby.start.begin","bold": false,"with": [{"score": {"name": "$LobbyCountdown","objective": "timers"},"color": "white"}],"color": "white"}]
tellraw @a [{"translate":"text.lobby.start.cancel.prompt","color":"red","bold": true,"clickEvent": {"action":"run_command","value": "/trigger cancel"},"hoverEvent":{"action":"show_text","contents":[{"translate":"text.lobby.start.cancel.hover","italic":true,"color":"gray"}]}}]
scoreboard players operation $Countdown timers = $LobbyCountdown timers
execute if score $ReadyNum lobbyVar matches 1 run tellraw @s [{"text":"[!] ","color":"dark_red","bold": true},{"translate":"text.lobby.start.warn.min_players","color":"white","bold": false}]
#solo (check for player cap var)
execute if score $MaxTeamSize options matches 1 if score $ReadyNum lobbyVar >= $MAX_PLAYERS var run tellraw @s [{"text":"[!] ","color":"dark_red","bold": true},{"translate":"text.lobby.start.warn.max_players","color":"white","bold": false,"with": [{"score": {"name": "$MAX_PLAYERS","objective": "var"}}]}]
#teams
execute unless score $MaxTeamSize options matches 1 if score $ReadyNum lobbyVar >= $MAX_PLAYERS var run tellraw @s [{"text":"[!] ","color":"dark_red","bold": true},{"translate":"text.lobby.start.warn.max_players","color":"white","bold": false,"with": [{"score": {"name": "$MAX_PLAYERS","objective": "var"}}]}]

function sg:lobby/start_logic/countdown/count

execute as @a run function sg:lobby/options/trigger/reset_tags
scoreboard players reset * value