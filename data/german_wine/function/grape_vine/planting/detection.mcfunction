say [debug] grape_vine/planting/detection

#Detect if Vine was placed on right blocks
execute unless entity @n[type=block_display,tag=gw_vine,distance=..0.5] if block ~ ~-1 ~ #german_wine:grape_vine_bottom if block ~ ~ ~ #german_wine:grape_vine_stem if block ~ ~1 ~ #german_wine:grape_vine_stem run function german_wine:grape_vine/planting/success
execute unless entity @n[type=block_display,tag=gw_vine,distance=..0.5] if block ~ ~-2 ~ #german_wine:grape_vine_bottom if block ~ ~-1 ~ #german_wine:grape_vine_stem if block ~ ~ ~ #german_wine:grape_vine_stem run function german_wine:grape_vine/planting/success

#If Vine was not, fail
execute if entity @s[tag=!gw_planted] run function german_wine:grape_vine/planting/fail

#Kill marker
kill @s
