function german_wine:debug_message/message {message:"miscellaneous/delete_vine"}
#Called by: tick_20t & grape_vine/interacting/break

#Particle
particle block{block_state:{Name:oak_leaves}} ~ ~ ~ .1 0.9 .1 0 30 force @a

#Playsound
playsound minecraft:block.crop.break block @a ~ ~ ~

#Delete all Vine Entities
execute positioned ~ ~0.5 ~ run kill @e[tag=gw_vine,distance=..0.8]
execute positioned ~ ~1.5 ~ run kill @e[tag=gw_vine,distance=..0.8]
