#Called by: Player or Click Event of Debug Message

#Toogle Message
scoreboard players add @s gw_debug_message 1
execute if score @s gw_debug_message matches 2 run scoreboard players set @s gw_debug_message 0

#Send Confirmation
execute if score @s gw_debug_message matches 1 run tellraw @s ["",{"text":"Personal Debug Message ","color":"light_purple"},{"text":"Enabled","underlined":true,"color":"green"}]
execute if score @s gw_debug_message matches 0 run tellraw @s ["",{"text":"Personal Debug Message ","color":"light_purple"},{"text":"Disabled","underlined":true,"color":"red"}]

#Tag Player
execute if score @s gw_debug_message matches 1 run tag @s add gw_debug_message_viewer
execute if score @s gw_debug_message matches 0 run tag @s remove gw_debug_message_viewer
