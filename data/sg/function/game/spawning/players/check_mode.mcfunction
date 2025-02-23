execute if score $Debug var matches 1.. run say sg:game/spawning/players/check_mode

#spawn function based on team size
execute unless score $MaxTeamSize options matches 2.. as @a[tag=SGPlaying,sort=random] run function sg:game/spawning/players/solos/spawn_player
execute if score $MaxTeamSize options matches 2.. as @a[tag=SGPlaying,sort=random] run function sg:game/spawning/players/teams/init