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

#Handeling Storage for Macros
data modify storage german_wine vine_hight set value {hight:0}

    #Handeling Storage for Macros for Recraftometer Lore
data modify storage german_wine vine_oechsle set value {oechsle:0}
data modify storage german_wine vine_quality set value {quality:0}
data modify storage german_wine vine_verity set value {verity:0}
data modify storage german_wine vine_age set value {age:0}
data modify storage german_wine vine_ripeness set value {ripeness:0}
data modify storage german_wine vine_ripening_progression set value {ripening_progression:0}
data modify storage german_wine vine_rotting set value {rotting:0}
data modify storage german_wine vine_disease set value {disease:0}
data modify storage german_wine vine_disease_progression set value {disease_progression:0}
