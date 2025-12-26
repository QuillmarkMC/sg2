#cannot kill player the same tick they join the server
#so instead attempt kill them every tick until it works
gamerule show_death_messages false
kill @s
gamerule show_death_messages true