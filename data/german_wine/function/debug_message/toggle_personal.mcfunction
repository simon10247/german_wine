#Called by: Player or Click Event of Debug Message

#Toogle Message
scoreboard players add #debug_bool gw_debug_message_global 1
execute if score #debug_bool gw_debug_message_global matches 2 run scoreboard players set #debug_bool gw_debug_message_global 0

#Send Confirmation
execute if score #debug_bool gw_debug_message_global matches 1 run tellraw @s ["",{"text":"Personal Debug Message ","color":"light_purple"},{"text":"Enabled","underlined":true,"color":"green"}]
execute if score #debug_bool gw_debug_message_global matches 0 run tellraw @s ["",{"text":"Personal Debug Message ","color":"light_purple"},{"text":"Disabled","underlined":true,"color":"red"}]

#Tag Player
execute if score #debug_bool gw_debug_message_global matches 1 run tag @s add gw_debug_message_viewer
execute if score #debug_bool gw_debug_message_global matches 0 run tag @s remove gw_debug_message_viewer
