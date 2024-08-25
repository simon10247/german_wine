function german_wine:debug_message/message {message:"grape_vine/interacting/harvest"}
#Called by: interaction/item_targeted

#Playsound
playsound minecraft:entity.sheep.shear block @a ~ ~ ~

#Depleate Durability
execute as @p[tag=interaction_click,gamemode=!creative,predicate=german_wine:unbreaking_evaluation] at @s run function german_wine:durability_editing/durability_depleation
