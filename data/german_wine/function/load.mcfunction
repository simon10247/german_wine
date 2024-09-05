#Scoreboard Stuff
scoreboard objectives add interaction_click dummy
scoreboard objectives add gw_vine_age dummy
scoreboard objectives add gw_vine_sub_counter dummy
scoreboard objectives add gw_warped_right_click minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add gw_debug_message dummy
scoreboard objectives add gw_trade dummy

    #Scoreboard Variables for Calculation
scoreboard objectives add gw_number dummy
scoreboard players set #gw_number_-64 gw_number -64
scoreboard players set #gw_number_0 gw_number 0

#Kick-start tick functions
function german_wine:tick_10t
function german_wine:tick_20t
function german_wine:tick_15s
