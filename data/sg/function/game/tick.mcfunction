#Death check
execute as @a[scores={deathDelayTimer=0}] run function sg:game/death/location
execute as @a[scores={deathDelayTimer=1..}] run scoreboard players remove @s deathDelayTimer 1
execute as @a[scores={death=1..}] run function sg:game/death/on_death

#check win condition when players dc
execute store result score $CurrentPlayers win if entity @a[tag=SGPlaying,gamemode=!spectator]
execute unless score $CurrentPlayers win = $ExpectedPlayers win run function sg:game/end_game/check_win

#prevent combat logging
execute as @a[scores={combatTimer=1..}] run scoreboard players remove @s combatTimer 1

#out of bounds
execute as @a[tag=SGPlaying,gamemode=!spectator] run function sg:game/out_of_bounds/check

#prevent dead players from being respawned
#rotate countdown timer