function german_wine:debug_message/message {message:"structures/village/farm/spawn_random_vines"}
#Called by: tick_20t

execute store result score #gw_trade gw_number_roll run random value 1..100

execute at @e[type=marker,tag=gw_vine_village_farm] run say TEST
