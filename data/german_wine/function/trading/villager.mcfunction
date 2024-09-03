function german_wine:debug_message/message {message:"trading/villager"}
#Called by: check_farmer

#Tag Villager
tag @s add gw_modified_trade

#Generate Random Oechsle Value
execute store result storage simon102:german_wine trade.oechsle int 1 run random value 55..85

#Modify Trade
execute store result storage simon102:german_wine trade.insertion int 1 run random value 4..5
execute if predicate german_wine:chance/95 as @s run function german_wine:trading/roll_trade with storage simon102:german_wine trade
execute store result storage simon102:german_wine trade.insertion int 1 run random value 4..5
execute if predicate german_wine:chance/80 as @s run function german_wine:trading/roll_trade with storage simon102:german_wine trade
