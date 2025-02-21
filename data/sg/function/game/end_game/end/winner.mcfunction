tag @a[tag=SGPlaying,gamemode=!spectator] add SGWinner
#tag winners to get VIP lobby access, persists through resets
tag @a[tag=SGWinner] add SGVictoryRoyale

#tellraw @a [{"text":"[!] ","color":"yellow","bold": true},{"translate":"text.game.congrats","color": "white","bold": false},{"text":"","extra":[{"selector":"@a[tag=SGWinner]"}],"bold": false},{"text": "!","bold": false}]

title @a times 5 120 20
#winners
#title @a[tag=SGWinner] subtitle [{"text": ""},{"translate": "text.game.death.subtitle","color": "white"},{"text":"1","color": "gold"},{"text": "/","color": "#70D470"},{"score":{"name":"$TotalPlayers","objective":"win"},"color": "#70D470"}]
#title @a[tag=SGWinner] title {"color":"#F3DD4F","translate":"text.game.death.title3","bold": true}
#not winners
#execute as @a[tag=!SGWinner,tag=SGPlaying] run title @s subtitle [{"text": ""},{"translate": "text.game.death.subtitle","color": "white"},{"score":{"name":"@s","objective":"playerPosition"},"color": "green"},{"text": "/","color": "#70D470"},{"score":{"name":"$TotalPlayers","objective":"win"},"color": "#70D470"}]
#title @a[tag=!SGPlaying] subtitle ""
#title @a[tag=!SGWinner] title {"color":"red","translate":"text.game.death.title2"}

scoreboard players operation $FireworkFanfare win = $end_firework_total options
function sg:game/end_game/end/fireworks/schedule
execute as @a at @s run playsound ui.toast.challenge_complete record @s ~ ~ ~ 1 1.5

effect give @a[tag=SGWinner] resistance infinite 10 true

schedule function sg:game/end_game/end/transition 160t
#schedule clear sg:game/logic/border/update
#schedule clear sg:game/logic/restock/timer