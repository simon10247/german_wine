say [debug] grape_vine/interacting/harvest

#Playsound
playsound minecraft:entity.sheep.shear block @a ~ ~ ~

#Depleate Durability
execute as @p[tag=interaction_click,gamemode=!creative] at @s run function german_wine:durability_editing/evaluating_enchantment
