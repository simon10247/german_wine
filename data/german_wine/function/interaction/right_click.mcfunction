say [debug] interaction/right_click

#Remove advancement that traces the interaction
advancement revoke @s only german_wine:right_click

#Findes Interaction that got clicked
tag @s add interaction_click
execute as @e[type=interaction,distance=..6] at @s run function german_wine:interaction/find_targeted
tag @s remove interaction_click
