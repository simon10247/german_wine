say [debug] durability_editing/break_tool

#Remove Item form Display Entity
data merge entity @n[type=item_display,tag=gw_durability_depleation] {item:{id:"minecraft:air"}}

#Play Tool Break sound
playsound entity.item.break player @a ~ ~ ~

#Show Tool Breaking Particle
execute if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_shovel"}}] run particle minecraft:item{item:"minecraft:wooden_shovel"} ^ ^1 ^.3 .09 .09 .09 0.1 9 normal @a
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_shovel"}}] run particle minecraft:item{item:"minecraft:stone_shovel"} ^ ^1 ^.3 .09 .09 .09 0.1 9 normal @a
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_shovel"}}] run particle minecraft:item{item:"minecraft:iron_shovel"} ^ ^1 ^.3 .09 .09 .09 0.1 9 normal @a
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_shovel"}}] run particle minecraft:item{item:"minecraft:golden_shovel"} ^ ^1 ^.3 .09 .09 .09 0.1 9 normal @a
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_shovel"}}] run particle minecraft:item{item:"minecraft:diamond_shovel"} ^ ^1 ^.3 .09 .09 .09 0.1 9 normal @a
execute if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_shovel"}}] run particle minecraft:item{item:"minecraft:netherite_shovel"} ^ ^1 ^.3 .09 .09 .09 0.1 9 normal @a
execute if entity @s[nbt={SelectedItem:{id:"minecraft:shears"}}] run particle minecraft:item{item:"minecraft:shears"} ^ ^1 ^.3 .09 .09 .09 0.1 9 normal @a
