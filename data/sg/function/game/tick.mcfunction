#Death check
execute as @a[tag=SGMarkedForDeath] run function sg:game/combat/marked_for_death
execute as @a[scores={deathDelayTimer=0}] run function sg:game/death/location
execute as @a[scores={deathDelayTimer=1..}] run scoreboard players remove @s deathDelayTimer 1
execute as @a[scores={death=1..}] run function sg:game/death/on_death
#execute as @a[scores={death=1..}] run function sg:game/death/location

#check win condition when players dc
execute store result score $CurrentPlayers win if entity @a[tag=SGPlaying,gamemode=!spectator]
execute unless score $CurrentPlayers win = $ExpectedPlayers win run function sg:game/end_game/check_win

#prevent combat logging
execute as @a[scores={combatTimer=1..}] run scoreboard players remove @s combatTimer 1

#out of bounds
execute as @a[tag=SGPlaying,gamemode=!spectator] run function sg:game/out_of_bounds/check

#prevent dead players from being respawned
execute as @a[tag=SGDeadPlayer,gamemode=!spectator,tag=!SG.Bypass_Safety] run function sg:general/safety/respawn

#rotate countdown timer
execute if score $CountdownTimer.State timers matches 1.. run function sg:game/start_countdown/tick_timer

#map events
#donut exit
execute if score $DonutExit events matches 0 if entity @a[predicate=sg:game/donut/exit,gamemode=!spectator] run function sg:game/map_events/donut/exit/explode
#donut entrance
execute if score $DonutEntrance events matches 0 as @a[scores={openChest=1..},gamemode=!spectator] run function sg:game/map_events/donut/entrance/check_location
#caldera water
execute as @a[predicate=sg:game/caldera/boiling_water,gamemode=!spectator] run function sg:game/map_events/caldera/tick

#death barrier
execute as @a[predicate=sg:game/death_barrier,gamemode=!spectator] run function sg:game/death_barrier/kill