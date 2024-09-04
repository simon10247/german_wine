#Run functions to check if Vine multiblock structure is broken
execute at @e[type=interaction,tag=gw_vine_interaction] unless block ~ ~-1 ~ #german_wine:grape_vine_bottom run function german_wine:miscellaneous/delete_vine
execute at @e[type=interaction,tag=gw_vine_interaction] unless block ~ ~ ~ #german_wine:grape_vine_stem run function german_wine:miscellaneous/delete_vine
execute at @e[type=interaction,tag=gw_vine_interaction] unless block ~ ~1 ~ #german_wine:grape_vine_stem run function german_wine:miscellaneous/delete_vine

#Check for Wandering Villager and modifie Trades
execute at @a as @e[type=wandering_trader,tag=!gw_modified_trade,distance=..20] run function german_wine:trading/wandering_trader
#Check for Farming Villager and modifie Trades
execute at @a as @e[type=villager,tag=!gw_modified_trade,distance=..20,nbt={VillagerData:{level:3}}] run function german_wine:trading/villager

#Loop
schedule function german_wine:tick_20t 20t
