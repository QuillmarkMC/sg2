#check a reconnecting player if they are in this game session
scoreboard players set @s leave 0
#TODO: uncomment this and fix it
#execute if score $State gameState = $Game gameState if score @s matchID = $Global matchID if score @s combatTimer matches 1.. run function sg:game/combat/punish
execute unless score @s matchID = $Global matchID run tag @s add SGResetPlayer
execute unless score $State gameState = $Game gameState run tag @s add SGResetPlayer
