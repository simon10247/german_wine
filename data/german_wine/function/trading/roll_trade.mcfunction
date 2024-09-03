function german_wine:debug_message/message {message:"trading/roll_trade"}
#Called by: trading/wandering_trader
#Called by: trading/villager

# Roll nummber and choose trade
execute store result score #random gw_trade run random value 1..41

execute if score #random gw_trade matches 1..10 run tag @s[tag=!got_trade1] add trade1
$data modify entity @s[tag=trade1] Offers.Recipes[$(insertion)] set value {maxUses:8,buy:{id:"minecraft:emerald",count:4},sell:{id:"minecraft:pig_spawn_egg",count:1,components:{"minecraft:item_name":'"Riesling Grape Sapling"',"minecraft:rarity":"common","minecraft:custom_model_data":1020000,"minecraft:custom_data":{gw:{grape_sapling:1b,riesling:1b,riesling_sapling:1b}},"minecraft:entity_data":{id:"minecraft:marker",Tags:["gw_grape_sapling","gw_riesling_sapling"],CustomName:'"Riesling Sapling"'}}}}
tag @s[tag=trade1] add got_trade1
tag @s remove trade1

execute if score #random gw_trade matches 11..20 run tag @s[tag=!got_trade2] add trade2
$data modify entity @s[tag=trade2] Offers.Recipes[$(insertion)] set value {maxUses:8,buy:{id:"minecraft:emerald",count:4},sell:{id:"minecraft:pig_spawn_egg",count:1,components:{"minecraft:item_name":'"Pinot Noir Grape Sapling"',"minecraft:rarity":"common","minecraft:custom_model_data":1020001,"minecraft:custom_data":{gw:{grape_sapling:1b,pinot_noir:1b,pinot_noir_sapling:1b}},"minecraft:entity_data":{id:"minecraft:marker",Tags:["gw_grape_sapling","gw_pinot_noir_sapling"],CustomName:'"Pinot Noir Sapling"'}}}}
tag @s[tag=trade2] add got_trade2
tag @s remove trade2

execute if score #random gw_trade matches 21..30 run tag @s[tag=!got_trade3] add trade3
$data modify entity @s[tag=trade3] Offers.Recipes[$(insertion)] set value {maxUses:6,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:poisonous_potato",count:2,components:{"minecraft:item_name":'"Riesling Grape"',"minecraft:lore":['{"color":"gray","text":"$(oechsle)° Oe"}'],"minecraft:rarity":"common","minecraft:custom_model_data":1020002,"minecraft:custom_data":{gw:{riesling:1b,riesling_grape:1b,grape:1b}},"minecraft:food":{nutrition:2,saturation:0.4}}}}
tag @s[tag=trade3] add got_trade3
tag @s remove trade3

execute if score #random gw_trade matches 31..40 run tag @s[tag=!got_trade4] add trade4
$data modify entity @s[tag=trade4] Offers.Recipes[$(insertion)] set value {maxUses:6,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:poisonous_potato",count:2,components:{"minecraft:item_name":'"Pinot Noir Grape"',"minecraft:lore":['{"color":"gray","text":"$(oechsle)° Oe"}'],"minecraft:rarity":"common","minecraft:custom_model_data":1020004,"minecraft:custom_data":{gw:{pinot_noir:1b,pinot_noir_grape:1b,grape:1b}},"minecraft:food":{nutrition:2,saturation:0.4}}}}
tag @s[tag=trade4] add got_trade4
tag @s remove trade4

execute if score #random gw_trade matches 41 run tag @s[tag=!got_trade5] add trade5
$data modify entity @s[tag=trade5] Offers.Recipes[$(insertion)] set value {maxUses:1,buy:{id:"minecraft:emerald",count:6},sell:{id:"minecraft:warped_fungus_on_a_stick",count:1,components:{"minecraft:max_damage":250,"minecraft:item_name":'"Refractometer"',"minecraft:rarity":"common","minecraft:custom_model_data":1020005,"minecraft:custom_data":{gw:{refractometer:1b,iron_refractometer:1b,damage_tool:{particle:{id:"minecraft:iron_chestplate"}}}}}}}
tag @s[tag=trade5] add got_trade5
tag @s remove trade5
