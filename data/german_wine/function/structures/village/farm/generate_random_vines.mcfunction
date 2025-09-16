function german_wine:debug_message/message {message:"structures/village/farm/generate_random_vines"}
#Called by: tick_20t

#Roll random number and spawn random Vine
execute store result score #gw_vines_village_farm gw_number_roll run random value 1..2

execute if score #gw_vines_village_farm gw_number_roll matches 1 run summon marker ~ ~ ~ {Tags:["gw_grape_sapling","gw_riesling_sapling","gw_village_farm_sapling"],CustomName:"Riesling Sapling"}
execute if score #gw_vines_village_farm gw_number_roll matches 2 run summon marker ~ ~ ~ {Tags:["gw_grape_sapling","gw_pinot_noir_sapling","gw_village_farm_sapling"],CustomName:"Pinot Noir Sapling"}

kill @s
