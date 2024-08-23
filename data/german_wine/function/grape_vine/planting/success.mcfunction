say [debug] grape_vine/planting/success

#Tag Vine as planted to prevent failing and droping the item
tag @s add gw_planted

#Store position of Vine
execute store result score #gw_number_vine_height gw_number run data get entity @s Pos.[1] 1

#Check if Vine was placed in the overworld or not
execute if dimension minecraft:overworld run function german_wine:grape_vine/planting/structure_sixtyfour
execute unless dimension minecraft:overworld run function german_wine:grape_vine/planting/structure_zero

#Teleport Vine to Marker
function german_wine:grape_vine/planting/set_position with storage german_wine vine

#Uncompress Vine Structure
execute as @e[tag=gw_vine_planting] as @s[tag=gw_vine_top] at @s run tp @s ~ ~1 ~
execute as @e[tag=gw_vine_planting] run data merge entity @s[type=minecraft:interaction,tag=gw_vine_interaction] {height:2f}

#Fix Position
execute as @e[tag=gw_vine_planting] at @s[tag=gw_vine_bottom] if block ~ ~-1 ~ #german_wine:grape_vine_stem_pos_fix as @e[tag=gw_vine_planting] at @s run tp @s ~ ~-1 ~

#Playsound
playsound minecraft:item.crop.plant block @a ~ ~ ~

#Remove Planting Tag
tag @e[tag=gw_vine_planting] remove gw_vine_planting
