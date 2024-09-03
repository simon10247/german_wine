function german_wine:debug_message/message {message:"trading/wandering_trader"}
#Called by: tick_20

#Tag Villager
tag @s add gw_modified_trade

#Generate Random Oechsle Value
execute store result storage simon102:german_wine trade.oechsle int 1 run random value 50..70

#Modify Trade
execute store result storage simon102:german_wine trade.insertion int 1 run random value 0..5
execute if predicate german_wine:chance/85 as @s run function german_wine:trading/roll_trade with storage simon102:german_wine trade
execute store result storage simon102:german_wine trade.insertion int 1 run random value 0..5
execute if predicate german_wine:chance/50 as @s run function german_wine:trading/roll_trade with storage simon102:german_wine trade
