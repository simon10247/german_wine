function german_wine:debug_message/message {message:"grape_vine/planting/set_position"}
#Called by: grape_vine/planting/success

#Teleport Vine Structure up to the Marker
$execute as @e[tag=gw_vine_planting] at @s run tp @s ~ ~$(height) ~
