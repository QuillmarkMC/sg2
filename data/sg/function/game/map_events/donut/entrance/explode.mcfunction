particle explosion_emitter -342 100 302 0 0 0 0 1 normal
execute positioned -340 100 304 run playsound entity.generic.explode ambient @a ~ ~ ~ 1 0.75
execute positioned -337 99 308 run place template sg:donut/broken/entrance ~-9 ~1 ~-10
scoreboard players set $DonutEntrance events 1