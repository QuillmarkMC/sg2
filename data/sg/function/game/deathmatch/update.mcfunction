#check if its time to start the next deathmatch event
execute if score $Timer border matches 90 run function sg:game/deathmatch/events/poison_1
execute if score $Timer border matches 45 run function sg:game/deathmatch/events/poison_2