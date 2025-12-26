gamerule show_death_messages false
kill @s
gamerule show_death_messages true
tellraw @a {"translate":"sg.game.death.doomed_to_fall",with:[{"selector":"@s"}]}