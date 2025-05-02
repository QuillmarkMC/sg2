gamerule showDeathMessages false
kill @s
gamerule showDeathMessages true
tellraw @a {"translate":"death.attack.outOfWorld",with:[{"selector":"@s"}]}