function german_wine:debug_message/message {message:"durability_editing/calculate"}
#Called by: durability_editing/durability_depleation

#Read Durability
execute store result score #gw_durability gw_number run data get entity @s item.components.minecraft:damage

#Get and Read Max Durability
item modify entity @s container.0 {function:"set_damage",damage:0}
execute store result score #gw_max_durability gw_number run data get entity @s item.components.minecraft:damage

#Calculate and Write Durability
execute store result entity @s item.components.minecraft:damage int 1 run scoreboard players add #gw_durability gw_number 1

#Break tool if Durability is 0
execute unless data entity @s item.components.minecraft:custom_data.gw.damage_tool.particle.id run data modify entity @s item.components.minecraft:custom_data.gw.damage_tool.particle.id set from entity @s item.id
execute if score #gw_durability gw_number >= #gw_max_durability gw_number run function german_wine:durability_editing/break_tool with entity @s item.components.minecraft:custom_data.gw.damage_tool.particle
