tellraw @a ["",{"text":"[","color":"dark_purple"},{"text":"DEBUG","color":"light_purple"},{"text":"]","color":"dark_purple"},{"text":" Uninstalling German Wine!","color":"dark_red"}]
#Called by: PLAYER

#Clear all scheduled functions
schedule clear german_wine:tick_10t
schedule clear german_wine:tick_15s
schedule clear german_wine:tick_20t

#Remove all scoreboard objects
scoreboard objectives remove interaction_click
scoreboard objectives remove gw_vine_age
scoreboard objectives remove gw_vine_sub_counter
scoreboard objectives remove gw_warped_right_click
scoreboard objectives remove gw_debug_message
scoreboard objectives remove gw_trade
scoreboard objectives remove gw_number
