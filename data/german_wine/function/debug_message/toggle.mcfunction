#Called by: Player or Click Event of Debug Message

#Toogle Message
scoreboard players add #debug_bool gw_debug_message 1
execute if score #debug_bool gw_debug_message matches 2 run scoreboard players set #debug_bool gw_debug_message 0

#Send Confirmation
execute if score #debug_bool gw_debug_message matches 1 run tellraw @s ["",{"text":"Debug Message ","color":"light_purple"},{"text":"Enabled","underlined":true,"color":"green"}]
execute if score #debug_bool gw_debug_message matches 0 run tellraw @s ["",{"text":"Debug Message ","color":"light_purple"},{"text":"Disabled","underlined":true,"color":"red"}]
