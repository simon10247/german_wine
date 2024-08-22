#Track days a Vine exists
scoreboard players add @e[type=minecraft:interaction,tag=gw_vine_interaction] gw_vine_sub_counter 1
scoreboard players add @e[type=minecraft:interaction,tag=gw_vine_interaction,scores={gw_vine_sub_counter=80..}] gw_vine_days 1
scoreboard players reset @e[type=minecraft:interaction,tag=gw_vine_interaction,scores={gw_vine_sub_counter=80..}] gw_vine_sub_counter

#Loop
schedule function german_wine:tick_15s 15s
