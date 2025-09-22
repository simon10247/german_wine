function german_wine:debug_message/message {message:"trading/wandering_trader/trades/refractometer"}
#Called by: trading/roll_trade

# Roll nummber
execute store result score #gw_trade gw_number_roll run random value 1..2

#Choose trade

execute if score #gw_trade gw_number_roll matches 1..2 run tag @s[tag=!gw_got_trade_refractometer_1] add gw_trade_refractometer_1
$data modify entity @s[tag=gw_trade_refractometer_1] Offers.Recipes[$(insertion)] set value {maxUses:1,buy:{id:"minecraft:emerald",count:6},sell:{id:"minecraft:warped_fungus_on_a_stick",count:1,components:{"minecraft:max_damage":250,"minecraft:item_name":"Refractometer","minecraft:rarity":"common","item_model":"german_wine:refractometer","minecraft:custom_data":{gw:{refractometer:1b,iron_refractometer:1b,damage_tool:{particle:{id:"minecraft:iron_chestplate"}}}}}}}
tag @s[tag=gw_trade_refractometer_1] add gw_got_trade_refractometer_1
tag @s remove gw_trade_refractometer_1
