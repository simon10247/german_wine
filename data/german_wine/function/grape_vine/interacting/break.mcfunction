execute if score #debug_bool gw_debug_message matches 1 run function german_wine:debug_message/message {message:"grape_vine/interacting/break"}

#Playsound
playsound minecraft:item.shovel.flatten block @a ~ ~ ~

#Particle
particle block{block_state:{Name:dirt}} ~ ~ ~ .1 .1 .1 0 10 force @a

#Depleate Durability
execute as @p[tag=interaction_click,gamemode=!creative,predicate=german_wine:unbreaking_evaluation] at @s run function german_wine:durability_editing/durability_depleation

#Drop Item
function german_wine:grape_vine/interacting/drop

#Delete Vine
function german_wine:miscellaneous/delete_vine
