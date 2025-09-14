function german_wine:debug_message/message {message:"trading/wandering_trader/roll_trade"}
#Called by: trading/wandering_trader/wandering_trader

# Roll nummber and choose trade
execute store result score #gw_trade gw_number_roll run random value 1..100

execute if score #gw_trade gw_number_roll matches 1..45 run function german_wine:trading/wandering_trader/trades/grapes with storage simon102:german_wine trade
execute if score #gw_trade gw_number_roll matches 46..90 run function german_wine:trading/wandering_trader/trades/saplings with storage simon102:german_wine trade
execute if score #gw_trade gw_number_roll matches 91..100 run function german_wine:trading/wandering_trader/trades/refractometer with storage simon102:german_wine trade
