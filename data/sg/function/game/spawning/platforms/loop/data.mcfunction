execute if score $Debug var matches 2.. run say sg:game/spawning/platforms/loop/data
# @s = platform position marker

data merge entity @s {NoAI:true,Glowing:true,Silent:true,Invulnerable:true,Tags:["PlayerSpawnPlatform"]}

#make sure marker is block aligned
execute at @s align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~