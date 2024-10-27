#check a reconnecting player if they are in this game session
scoreboard players set @s leave 0
#execute if score @s combatTimer matches 1.. run function sg:game/logic/combat/punish
execute unless score @s matchID = $Global matchID run tag @s add SGResetPlayer
execute unless score $State gameState = $Game gameState run tag @s add SGResetPlayer
#execute if entity @s[team=Spectator] run tag @s add SGResetPlayer