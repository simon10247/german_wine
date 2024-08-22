say [debug] durability_editing/evaluating_enchantment

#Check Enchantment Level
scoreboard players set #enchantment_level gw_enchantment_evaluation 0
execute store result score #enchantment_level gw_enchantment_evaluation run data get entity @s SelectedItem.components.minecraft:enchantments.levels.minecraft:unbreaking

#Determen if Tool gets damaged
execute if score #enchantment_level gw_enchantment_evaluation matches 0 run function german_wine:durability_editing/durability_depleation
execute if score #enchantment_level gw_enchantment_evaluation matches 1 if predicate german_wine:chance/50 run function german_wine:durability_editing/durability_depleation
execute if score #enchantment_level gw_enchantment_evaluation matches 2 if predicate german_wine:chance/33 run function german_wine:durability_editing/durability_depleation
execute if score #enchantment_level gw_enchantment_evaluation matches 3 if predicate german_wine:chance/25 run function german_wine:durability_editing/durability_depleation
