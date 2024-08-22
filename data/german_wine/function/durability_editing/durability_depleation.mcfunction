say [debug] durability_editing/durability_depleation

#Summon Display Entity
summon item_display ~ ~ ~ {Tags:["gw_durability_depleation"],transformation:{scale:[0f,0f,0f]}}

#Clone Selected Item to Display Entity
item replace entity @n[type=item_display,tag=gw_durability_depleation] container.0 from entity @s weapon.mainhand

#Read Durability
execute store result score #gw_durability gw_number run data get entity @n[type=item_display,tag=gw_durability_depleation] item.components.minecraft:damage

#Calculate Durability
execute store result storage simon102:german_wine durability int 1 run scoreboard players add #gw_durability gw_number 1   

#Break tool if Durability is 0
execute if score #gw_durability gw_number matches 59 if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_shovel"}}] run function german_wine:durability_editing/break_tool
execute if score #gw_durability gw_number matches 131 if entity @s[nbt={SelectedItem:{id:"minecraft:stone_shovel"}}] run function german_wine:durability_editing/break_tool
execute if score #gw_durability gw_number matches 250 if entity @s[nbt={SelectedItem:{id:"minecraft:iron_shovel"}}] run function german_wine:durability_editing/break_tool
execute if score #gw_durability gw_number matches 32 if entity @s[nbt={SelectedItem:{id:"minecraft:golden_shovel"}}] run function german_wine:durability_editing/break_tool
execute if score #gw_durability gw_number matches 1561 if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_shovel"}}] run function german_wine:durability_editing/break_tool
execute if score #gw_durability gw_number matches 2031 if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_shovel"}}] run function german_wine:durability_editing/break_tool
execute if score #gw_durability gw_number matches 238 if entity @s[nbt={SelectedItem:{id:"minecraft:shears"}}] run function german_wine:durability_editing/break_tool

#Write Durability
data modify entity @n[type=item_display,tag=gw_durability_depleation] item.components.minecraft:damage set from storage simon102:german_wine durability

#Clone Display Entity Item to Player
item replace entity @s weapon.mainhand from entity @n[type=item_display,tag=gw_durability_depleation] container.0

#Kill Display Entity
kill @n[type=item_display,tag=gw_durability_depleation]
