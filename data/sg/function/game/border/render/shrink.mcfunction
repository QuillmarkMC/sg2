bossbar set sg:border color red
execute store result bossbar sg:border value run scoreboard players get $Timer border
#bossbar set sg:border name [{"translate":"text.game.border.advance","color":"#999999"},{"score":{"name":"$Size","objective":"border"},"color":"white"},{"text": " x ","color": "white"},{"score":{"name":"$Size","objective":"border"},"color":"white"}]
