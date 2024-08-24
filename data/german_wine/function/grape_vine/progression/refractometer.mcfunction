execute if score #debug_bool gw_debug_message matches 1 run function german_wine:debug_message/message {message:"grape_vine/progression/refractometer"}

#Playsound
playsound minecraft:block.pointed_dripstone.drip_water_into_cauldron player @a ~ ~ ~ 100 2
playsound minecraft:block.amethyst_block.fall player @a ~ ~ ~ 1 2

#Get Vine Days and Store
execute store result storage simon102:german_wine refractometer.age int 1 run scoreboard players get @s gw_vine_age
#!Placeholder Values [
data modify storage simon102:german_wine refractometer.oechsle set value "152"
data modify storage simon102:german_wine refractometer.quality set value "Trockenbeerenauslese"
data modify storage simon102:german_wine refractometer.verity set value "Riesling"
#age
data modify storage simon102:german_wine refractometer.ripeness set value "Noble Rot"
data modify storage simon102:german_wine refractometer.ripening_progression set value "85"
data modify storage simon102:german_wine refractometer.rotting set value "55"
data modify storage simon102:german_wine refractometer.disease set value "Noble Rot"
data modify storage simon102:german_wine refractometer.disease_progression set value "100"
#!Placeholder Values ]

#Run Function with Stored Days
execute as @p[tag=interaction_click] run function german_wine:grape_vine/progression/write_lore with storage simon102:german_wine refractometer

#Depleating Duritility
execute as @p[tag=interaction_click,gamemode=!creative,predicate=german_wine:unbreaking_evaluation] at @s run function german_wine:durability_editing/durability_depleation
