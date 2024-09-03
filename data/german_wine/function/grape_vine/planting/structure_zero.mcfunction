function german_wine:debug_message/message {message:"grape_vine/planting/structure_zero"}
#Called by: grape_vine/planting/success

#Set Vine Structure
execute if entity @s[tag=gw_riesling_sapling] run setblock ~ 0 ~ structure_block[mode=load]{name:"riesling_grape_vine",posX:0,posY:0,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD",ignoreEntities:0b} replace
execute if entity @s[tag=gw_pinot_noir_sapling] run setblock ~ 0 ~ structure_block[mode=load]{name:"pinot_noir_grape_vine",posX:0,posY:0,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD",ignoreEntities:0b} replace
setblock ~ 0 ~1 redstone_block

#If World bottom is Void, replace Structure Block with air, else with Bedrock
execute if dimension minecraft:the_end run fill ~ -64 ~ ~ -64 ~1 air
execute unless dimension minecraft:the_end run fill ~ -64 ~ ~ -64 ~1 bedrock

#Calculate Blocks to move Vine up, to be at Marker position, and Store result
execute store result storage simon102:german_wine vine.height int 1 run scoreboard players operation #gw_number_vine_height gw_number -= #gw_number_0 gw_number
