gamemode spectator
tellraw @s [{"text":"[!] ","color":"dark_red","bold": true},{translate:"text.general.safety.respawn1",color:"white",bold:false,with:[{translate:"text.general.safety.respawn2",color:"yellow",underlined:true,bold:false,click_event:{action:"suggest_command",command:"/function sg:general/safety/bypass/allow"},hover_event:{action:"show_text",value:{"translate":"text.general.safety.bypass.warning_hover",italic:true,color:gray}}}]}]
execute at @s run playsound block.note_block.pling ambient @s ~ ~ ~ 1 1
