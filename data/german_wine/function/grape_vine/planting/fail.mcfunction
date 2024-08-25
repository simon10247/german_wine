function german_wine:debug_message/message {message:"grape_vine/planting/fail"}
#Called by: grape_vine/planting/detection & grape_vine/interacting/break

#Drop Sapling
execute if entity @s[tag=gw_riesling_sapling] run summon item ~ ~ ~ {PickupDelay:20,Motion:[0.0,0.2,0.0],Item:{id:"minecraft:pig_spawn_egg",count:1,components:{"minecraft:item_name":'"Riesling Grape Sapling"',"minecraft:rarity":"common","minecraft:custom_model_data":1020000,"minecraft:custom_data":{gw:{grape_sapling:1b,riesling:1b,riesling_sapling:1b}},"minecraft:entity_data":{id:"minecraft:marker",Tags:["gw_grape_sapling","gw_riesling_sapling"],CustomName:'"Riesling Sapling"'}}}}
execute if entity @s[tag=gw_pinot_noir_sapling] run summon item ~ ~ ~ {PickupDelay:20,Motion:[0.0,0.2,0.0],Item:{id:"minecraft:pig_spawn_egg",count:1,components:{"minecraft:item_name":'"Pinot Noir Grape Sapling"',"minecraft:rarity":"common","minecraft:custom_model_data":1020001,"minecraft:custom_data":{gw:{grape_sapling:1b,pinot_noir:1b,pinot_noir_sapling:1b}},"minecraft:entity_data":{id:"minecraft:marker",Tags:["gw_grape_sapling","gw_pinot_noir_sapling"],CustomName:'"Pinot Noir Sapling"'}}}}
