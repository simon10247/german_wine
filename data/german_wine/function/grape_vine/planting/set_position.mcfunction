execute if score #debug_bool gw_debug_message matches 1 run function german_wine:debug_message/message {message:"grape_vine/planting/set_position"}

#Teleport Vine Structure up to the Marker
$execute as @e[tag=gw_vine_planting] at @s run tp @s ~ ~$(height) ~
