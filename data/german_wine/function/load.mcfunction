#Scoreboard Stuff
scoreboard objectives add interaction_click dummy
scoreboard objectives add gw_enchantment_evaluation dummy
scoreboard objectives add gw_vine_age dummy
scoreboard objectives add gw_vine_sub_counter dummy
scoreboard objectives add gw_warped_right_click minecraft.used:minecraft.warped_fungus_on_a_stick

    #Scoreboard Variables for Culculation
scoreboard objectives add gw_nummber dummy
scoreboard players set #gw_nummber_-64 gw_nummber -64
scoreboard players set #gw_nummber_0 gw_nummber 0
scoreboard players set #gw_nummber_1 gw_nummber 1

#Kick-start tick functions
function german_wine:tick_10t
function german_wine:tick_20t
function german_wine:tick_15s
