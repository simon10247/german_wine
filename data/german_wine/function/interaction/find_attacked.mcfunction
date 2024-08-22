say [debug] interaction/find_attacked

#Findes Interaction that got clicked
scoreboard players set #bool interaction_click 0
execute on attacker store result score #bool interaction_click if entity @s[tag=interaction_click]

#Runs Function as Interaction Entity
execute if score #bool interaction_click matches 1 if entity @s[tag=gw_vine_interaction] run function german_wine:interaction/item_attacked

#Resets Intraction data
execute if score #bool interaction_click matches 1 run data remove entity @s attack
