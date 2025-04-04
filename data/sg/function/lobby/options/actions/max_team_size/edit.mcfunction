execute if score $Countdown timers matches 0.. run return fail
#TODO: translate
tellraw @s [{"text":"[!] ","color":"blue","bold": true},{"text":"Use the command ","color": "white","bold": false},{"text": "\"/trigger value set\"","color":"yellow","underlined":true,"bold": false,"clickEvent": {"action":"suggest_command","value": "/trigger value set "},"hoverEvent":{"action":"show_text","contents":[{"text":"Click me","italic":true,"color":"gray","bold": false}]}},{"text": " to enter a custom value!","color": "white","bold": false}]
scoreboard players enable @s value
tag @s add SGEdit.max_team_size
execute at @s run playsound block.note_block.pling ambient @s ~ ~ ~ 1 1
