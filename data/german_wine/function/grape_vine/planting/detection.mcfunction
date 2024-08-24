execute if score #debug_bool gw_debug_message matches 1 run function german_wine:debug_message/message {message:"grape_vine/planting/detection"}

#Detect if Vine was placed on right blocks
execute unless entity @n[type=interaction,tag=gw_vine_interaction,distance=..0.1] if block ~ ~-1 ~ #german_wine:grape_vine_bottom if block ~ ~ ~ #german_wine:grape_vine_stem if block ~ ~1 ~ #german_wine:grape_vine_stem run function german_wine:grape_vine/planting/success
execute positioned ~ ~-1 ~ unless entity @n[type=interaction,tag=gw_vine_interaction,distance=..0.1] if block ~ ~-1 ~ #german_wine:grape_vine_bottom if block ~ ~ ~ #german_wine:grape_vine_stem if block ~ ~1 ~ #german_wine:grape_vine_stem run function german_wine:grape_vine/planting/success

#If Vine was not, fail
execute if entity @s[tag=!gw_planted] run function german_wine:grape_vine/planting/fail

#Kill marker
kill @s
