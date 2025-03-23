execute at @s run playsound ui.toast.challenge_complete ambient @s ~ ~ ~ 1 1
#tellraw @a
scoreboard players reset @s parkourCheckpoint
scoreboard players operation @s respawnState = $Lobby.Default respawnState

summon firework_rocket 35551.5 90.0 35565.5 {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_twinkle:true,has_trail:true,colors:[I;3754400]},{shape:"small_ball",has_trail:true,colors:[I;16299558]}]}}}}
summon firework_rocket 35547.5 90.0 35565.5 {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_twinkle:true,has_trail:true,colors:[I;3754400]},{shape:"small_ball",has_trail:true,colors:[I;16299558]}]}}}}
