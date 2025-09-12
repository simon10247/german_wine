function german_wine:debug_message/message {message:"trading/villager/villager"}
#Called by: tick_20t

#Tag Villager
tag @s add gw_modified_trade

#Modify Trade
execute store result storage simon102:german_wine trade.insertion int 1 run random value 4..5
execute if predicate german_wine:chance/95 as @s run function german_wine:trading/villager/grapes with storage simon102:german_wine trade
