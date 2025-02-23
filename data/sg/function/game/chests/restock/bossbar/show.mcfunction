execute store result bossbar sg:loot max run scoreboard players get $ChunkIndex chestRestock
execute store result bossbar sg:loot value run scoreboard players set $ProgressBar chestRestock 0
bossbar set sg:loot players @a
bossbar set sg:loot visible true
tellraw @a {"score": {"name": "$ChunkIndex","objective": "chestRestock"}}