say [debug] interaction/left_click

#Remove advancement that traces the interaction
advancement revoke @s only german_wine:left_click

#Findes Interaction that got clicked
tag @s add interaction_click
execute as @e[type=interaction,distance=..6] at @s run function german_wine:interaction/find_attacked
tag @s remove interaction_click
