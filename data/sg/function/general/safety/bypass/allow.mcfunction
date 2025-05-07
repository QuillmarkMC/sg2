tag @s add SG.Bypass_Safety
tellraw @s [{"text":"[!] ","color":"yellow","bold": true},{"translate":"text.general.safety.bypass.allow",color:"white",bold:false}]
tellraw @s [{"text":"[!] ","color":"dark_red","bold": true},{"translate":"text.general.safety.bypass.warning1",color:"white",bold:false,with:[{"translate":"text.general.safety.bypass.warning2","underlined": true,bold:false,"color": "yellow","click_event": {"action":"suggest_command","command": "/function sg:general/safety/bypass/remove"},"hover_event":{"action":"show_text","value":[{"translate":"text.general.safety.bypass.warning_hover","italic":true,"color":"gray"}]}},{"translate":"text.general.safety.bypass.warning3",color:"white",bold:false}]}]
scoreboard players set @s safetyAlert 10
