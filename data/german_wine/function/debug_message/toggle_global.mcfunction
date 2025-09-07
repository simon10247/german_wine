#Called by: Player

#Toogle Message
scoreboard players add #debug_bool gw_debug_message_global 1
execute if score #debug_bool gw_debug_message_global matches 2 run scoreboard players set #debug_bool gw_debug_message_global 0

#Send Confirmation
execute if score #debug_bool gw_debug_message_global matches 1 run tellraw @s ["",{"text":"Global Debug Message ","color":"light_purple"},{"text":"Enabled","underlined":true,"color":"green"}]
execute if score #debug_bool gw_debug_message_global matches 0 run tellraw @s ["",{"text":"Global Debug Message ","color":"light_purple"},{"text":"Disabled","underlined":true,"color":"red"}]
