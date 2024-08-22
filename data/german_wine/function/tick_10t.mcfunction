#Run functions
execute as @e[type=marker,tag=gw_grape_sapling] at @s run function german_wine:grape_vine/planting/detection

#Reset Refractometer Lore
execute as @a[scores={gw_warped_right_click=1..}] run function german_wine:grape_vine/progression/reset_lore

#Loop
schedule function german_wine:tick_10t 5t
