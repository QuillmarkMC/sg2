execute if score $Countdown timers matches 0.. run return fail
tellraw @s [{"text":"[!] ","color":"blue","bold": true},{"translate":"text.lobby.options.actions.edit","color": "white","bold": false,"with": [{"translate": "text.lobby.options.actions.edit.command","color":"yellow","underlined":true,"click_event": {"action":"suggest_command","command": "/trigger value set "},"hover_event":{"action":"show_text","value":[{"translate":"text.lobby.options.actions.hover_prompt","italic":true,"color":"gray","bold": false}]}}]}]
scoreboard players enable @s value
function sg:lobby/options/trigger/reset_tags
tag @s add SGEdit.chest_restock_time
execute at @s run playsound block.note_block.pling ambient @s ~ ~ ~ 1 1
