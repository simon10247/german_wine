say [debug] durability_editing/break_tool

#Remove Item form Display Entity
data merge entity @s {item:{id:"minecraft:air"}}

#Play Tool Break sound
playsound entity.item.break player @a ~ ~ ~

#Show Tool Breaking Particle
$execute at @p run particle minecraft:item{item:"$(id)"} ^ ^1 ^.3 .09 .09 .09 0.1 9 normal @a
