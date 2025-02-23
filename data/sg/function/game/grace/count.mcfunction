#TODO: better grace period timer
#execute if score $Countdown timers matches 60 run tellraw @a [{"text": ""},{"text":"[!] ","color":"yellow","bold": true},{"translate":"text.game.pvp_grace.60"}]
#execute if score $Countdown timers matches 60 as @a at @s run playsound block.anvil.place ambient @s ~ ~ ~ 0.75
#execute if score $Countdown timers matches 31 run tellraw @a [{"text": ""},{"text":"[!] ","color":"yellow","bold": true},{"translate":"text.game.pvp_grace.30"}]
#execute if score $Countdown timers matches 31 as @a at @s run playsound block.anvil.place ambient @s ~ ~ ~ 0.75
#execute if score $Countdown timers matches 15 run tellraw @a [{"text": ""},{"text":"[!] ","color":"yellow","bold": true},{"translate":"text.game.pvp_grace.15"}]
#execute if score $Countdown timers matches 15 as @a at @s run playsound block.anvil.place ambient @s ~ ~ ~ 0.75

scoreboard players remove $Countdown timers 1
execute unless score $Countdown timers matches ..0 run schedule function sg:game/grace/count 1s
execute if score $Countdown timers matches ..0 run function sg:game/grace/end