#Send Confirmation
execute if score #debug_bool gw_debug_message matches 1 run tellraw @s ["",{"text":"Debug Message ","color":"light_purple"},{"text":"Enabled","underlined":true,"color":"green"}]
execute if score #debug_bool gw_debug_message matches 2 run tellraw @s ["",{"text":"Debug Message ","color":"light_purple"},{"text":"Disabled","underlined":true,"color":"red"}]

#Toogle Message
scoreboard players add #debug_bool gw_debug_message 1
execute if score #debug_bool gw_debug_message matches 2 run scoreboard players reset #debug_bool gw_debug_message
