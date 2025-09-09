function german_wine:debug_message/message {message:"trading/roll_trade"}
#Called by: trading/wandering_trader & trading/villager

# Roll nummber and choose trade
execute store result score #random gw_trade run random value 1..100

execute if score #random gw_trade matches 1..45 run function german_wine:trading/wandering_trader/grapes with storage simon102:german_wine trade
execute if score #random gw_trade matches 46..90 run function german_wine:trading/wandering_trader/saplings with storage simon102:german_wine trade
execute if score #random gw_trade matches 91..100 run function german_wine:trading/wandering_trader/refractometer with storage simon102:german_wine trade
