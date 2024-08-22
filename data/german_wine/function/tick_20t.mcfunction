#Run functions to check if Vine multiblock structure is broken
execute at @e[type=interaction,tag=gw_vine_interaction] unless block ~ ~-1 ~ #german_wine:grape_vine_bottom run function german_wine:miscellaneous/delete_vine
execute at @e[type=interaction,tag=gw_vine_interaction] unless block ~ ~ ~ #german_wine:grape_vine_stem run function german_wine:miscellaneous/delete_vine
execute at @e[type=interaction,tag=gw_vine_interaction] unless block ~ ~1 ~ #german_wine:grape_vine_stem run function german_wine:miscellaneous/delete_vine

#Loop
schedule function german_wine:tick_20t 20t
