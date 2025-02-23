#called with sg:options Options
#check border shrink time from lobby
$worldborder set 40 $(border_shrink_time)
execute store result score $Timer border run data get storage sg:options Options.border_shrink_time
execute store result bossbar sg:border max run scoreboard players get $Timer border
bossbar set sg:border visible true
scoreboard players operation $State border = $Shrink border
function sg:game/border/update
execute as @a at @s run playsound minecraft:entity.wither.spawn ambient @s ~ ~ ~ 0.75 1
tellraw @a [{"text":"[!] ","color":"yellow","bold": true},{"translate":"text.game.border.shrink","color": "white","bold": false}]
