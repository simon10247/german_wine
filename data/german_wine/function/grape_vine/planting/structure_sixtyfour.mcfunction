function german_wine:debug_message/message {message:"grape_vine/planting/structure_sixtyfour"}
#Called by: grape_vine/planting/success

#Set Vine Structure
execute if entity @s[tag=gw_riesling_sapling] run setblock ~ -64 ~ structure_block[mode=load]{name:"german_wine:grape_vines/riesling_grape_vine",posX:0,posY:0,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD",ignoreEntities:0b} replace
execute if entity @s[tag=gw_pinot_noir_sapling] run setblock ~ -64 ~ structure_block[mode=load]{name:"german_wine:grape_vines/pinot_noir_grape_vine",posX:0,posY:0,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD",ignoreEntities:0b} replace
setblock ~ -64 ~1 redstone_block

#If World bottom is Void, replace Structure Block with air, else with Bedrock
execute if biome ~ ~ ~ the_void run fill ~ -64 ~ ~ -64 ~1 air
execute unless biome ~ ~ ~ the_void run fill ~ -64 ~ ~ -64 ~1 bedrock

#Calculate Blocks to move Vine up, to be at Marker position, and Store result
execute store result storage simon102:german_wine vine.height int 1 run scoreboard players operation #gw_number_vine_height gw_number -= #gw_number_-64 gw_number
