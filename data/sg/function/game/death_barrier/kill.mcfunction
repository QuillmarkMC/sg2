gamerule showDeathMessages false
kill @s
gamerule showDeathMessages true
tellraw @a {"translate":"text.game.death.doomed_to_fall",with:[{"selector":"@s"}]}