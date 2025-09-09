function german_wine:debug_message/message {message:"trading/wandering_trader/grapes"}
#Called by: trading/roll_trade

# Roll nummber
execute store result score #random gw_trade run random value 1..2

#Choose trade
execute if score #random gw_trade matches 1 run tag @s[tag=!gw_got_trade_grape_1] add gw_trade_grape_1
$data modify entity @s[tag=gw_trade_grape_1] Offers.Recipes[$(insertion)] set value {maxUses:6,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:poisonous_potato",count:2,components:{"minecraft:item_name":"Riesling Grape","minecraft:lore":[{"color":"gray","text":"$(oechsle)° Oe"}],"minecraft:rarity":"common","item_model":"german_wine:white_grape","minecraft:custom_data":{gw:{riesling:1b,riesling_grape:1b,grape:1b}},"minecraft:food":{nutrition:2,saturation:0.4}}}}
tag @s[tag=gw_trade_grape_1] add gw_got_trade_grape_1
tag @s remove gw_trade_grape_1

execute if score #random gw_trade matches 2 run tag @s[tag=!gw_got_trade_grape_2] add gw_trade_grape_2
$data modify entity @s[tag=gw_trade_grape_2] Offers.Recipes[$(insertion)] set value {maxUses:6,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:poisonous_potato",count:2,components:{"minecraft:item_name":"Pinot Noir Grape","minecraft:lore":[{"color":"gray","text":"$(oechsle)° Oe"}],"minecraft:rarity":"common","item_model":"german_wine:red_grape","minecraft:custom_data":{gw:{pinot_noir:1b,pinot_noir_grape:1b,grape:1b}},"minecraft:food":{nutrition:2,saturation:0.4}}}}
tag @s[tag=gw_trade_grape_2] add gw_got_trade_grape_2
tag @s remove gw_trade_grape_2

$say Trade was inserted at positions: $(insertion)
