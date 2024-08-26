#Run functions to check if Vine multiblock structure is broken
execute at @e[type=interaction,tag=gw_vine_interaction] unless block ~ ~-1 ~ #german_wine:grape_vine_bottom run function german_wine:miscellaneous/delete_vine
execute at @e[type=interaction,tag=gw_vine_interaction] unless block ~ ~ ~ #german_wine:grape_vine_stem run function german_wine:miscellaneous/delete_vine
execute at @e[type=interaction,tag=gw_vine_interaction] unless block ~ ~1 ~ #german_wine:grape_vine_stem run function german_wine:miscellaneous/delete_vine

#Check for Wandering Villager and modifie Trades
execute as @n[type=wandering_trader,tag=!gw_modified_trade] at @s as @a if predicate german_wine:in_distance_20 as @n[type=wandering_trader,tag=!gw_modified_trade] run function german_wine:grape_vine/trading/wandering_trader

#Loop
schedule function german_wine:tick_20t 20t
