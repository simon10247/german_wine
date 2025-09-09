function german_wine:debug_message/message {message:"trading/wandering_trader/saplings"}
#Called by: trading/roll_trade

# Roll nummber
execute store result score #random gw_trade run random value 1..2

#Choose trade
execute if score #random gw_trade matches 1 run tag @s[tag=!gw_got_trade_sapling_1] add gw_trade_sapling_1
$data modify entity @s[tag=gw_trade_sapling_1] Offers.Recipes[$(insertion)] set value {maxUses:8,buy:{id:"minecraft:emerald",count:4},sell:{id:"minecraft:pig_spawn_egg",count:1,components:{"minecraft:item_name":"Riesling Grape Sapling","minecraft:rarity":"common","item_model":"german_wine:white_grape_sapling","minecraft:custom_data":{gw:{grape_sapling:1b,riesling:1b,riesling_sapling:1b}},"minecraft:entity_data":{id:"minecraft:marker",Tags:["gw_grape_sapling","gw_riesling_sapling"],CustomName:"Riesling Sapling"}}}}
tag @s[tag=gw_trade_sapling_1] add gw_got_trade_sapling_1
tag @s remove gw_trade_sapling_1

execute if score #random gw_trade matches 2 run tag @s[tag=!gw_got_trade_sapling_2] add gw_trade_sapling_2
$data modify entity @s[tag=gw_trade_sapling_2] Offers.Recipes[$(insertion)] set value {maxUses:8,buy:{id:"minecraft:emerald",count:4},sell:{id:"minecraft:pig_spawn_egg",count:1,components:{"minecraft:item_name":"Pinot Noir Grape Sapling","minecraft:rarity":"common","item_model":"german_wine:red_grape_sapling","minecraft:custom_data":{gw:{grape_sapling:1b,pinot_noir:1b,pinot_noir_sapling:1b}},"minecraft:entity_data":{id:"minecraft:marker",Tags:["gw_grape_sapling","gw_pinot_noir_sapling"],CustomName:"Pinot Noir Sapling"}}}}
tag @s[tag=gw_trade_sapling_2] add gw_got_trade_sapling_2
tag @s remove gw_trade_sapling_2

$say Trade was inserted at positions: $(insertion)
