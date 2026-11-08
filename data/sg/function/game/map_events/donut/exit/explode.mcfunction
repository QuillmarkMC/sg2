particle explosion_emitter -354 86 197 0 0 0 0 1 normal
execute positioned -354 86 197 run playsound entity.generic.explode ambient @a ~ ~ ~ 1 0.75
execute positioned -353 85 202 run place template sg:donut/broken/exit ~-2 ~ ~-6
scoreboard players set $DonutExit events 1