advancement revoke @s only sg:lobby/credits/chiefco1
tellraw @s [{"text":"[!] ","color":"dark_green","bold": true},{"translate": "sg.lobby.credits.name.chiefco1","color":"green","bold": false},{"translate": "sg.lobby.credits.role.builder","color":"white","bold": false},{"translate": "sg.lobby.credits.role.trailer","color":"white","bold": false}]
execute at @s run playsound block.note_block.bit ambient @s ~ ~ ~ 1 2
