execute if score #debug_bool gw_debug_message matches 1 run function german_wine:debug_message/message {message:"grape_vine/progression/write_lore"}

#Summon Display Entity
summon item_display ~ ~ ~ {Tags:["gw_write_lore"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}

#Clone Selected Item to Display Entity
item replace entity @n[type=item_display,tag=gw_write_lore] container.0 from entity @s weapon.mainhand

#Clear Lore
execute as @n[type=item_display,tag=gw_write_lore] run data modify entity @s item.components.minecraft:lore set value ""

#Write Lore
execute as @n[type=item_display,tag=gw_write_lore] run data modify entity @s item.components.minecraft:lore append value '[{"color":"white","italic":false,"text":"-------------------------------"}]'
$execute as @n[type=item_display,tag=gw_write_lore] run data modify entity @s item.components.minecraft:lore append value '[{"color":"white","italic":false,"text":"Oechsle: "},{"color":"gray","italic":false,"text":"$(oechsle)° Oe"}]'
$execute as @n[type=item_display,tag=gw_write_lore,nbt={item:{components:{"minecraft:custom_data":{gw_diamond_refractometer:1b}}}}] run data modify entity @s item.components.minecraft:lore append value '[{"color":"white","italic":false,"text":"Quality: "},{"color":"gray","italic":false,"text":"$(quality)"}]'
$execute as @n[type=item_display,tag=gw_write_lore] run data modify entity @s item.components.minecraft:lore append value '[{"color":"white","italic":false,"text":"Verity: "},{"color":"gray","italic":false,"text":"$(verity)"}]'
$execute as @n[type=item_display,tag=gw_write_lore] run data modify entity @s item.components.minecraft:lore append value '[{"color":"white","italic":false,"text":"Age: "},{"color":"gray","italic":false,"text":"$(age) Days"}]'
$execute as @n[type=item_display,tag=gw_write_lore] run data modify entity @s item.components.minecraft:lore append value '[{"color":"white","italic":false,"text":"Ripeness: "},{"color":"gray","italic":false,"text":"$(ripeness)"}]'
$execute as @n[type=item_display,tag=gw_write_lore,nbt={item:{components:{"minecraft:custom_data":{gw_diamond_refractometer:1b}}}}] run data modify entity @s item.components.minecraft:lore append value '[{"color":"white","italic":false,"text":"Ripening Progression: "},{"color":"gray","italic":false,"text":"$(ripening_progression)%"}]'
$execute as @n[type=item_display,tag=gw_write_lore] run data modify entity @s item.components.minecraft:lore append value '[{"color":"white","italic":false,"text":"Rotting Progression: "},{"color":"gray","italic":false,"text":"$(rotting)%"}]'
$execute as @n[type=item_display,tag=gw_write_lore,nbt={item:{components:{"minecraft:custom_data":{gw_iron_refractometer:1b}}}}] run data modify entity @s item.components.minecraft:lore append value '[{"color":"white","italic":false,"text":"Disease: "},{"color":"gray","italic":false,"text":"$(disease)"}]'
$execute as @n[type=item_display,tag=gw_write_lore,nbt={item:{components:{"minecraft:custom_data":{gw_diamond_refractometer:1b}}}}] run data modify entity @s item.components.minecraft:lore append value '[{"color":"white","italic":false,"text":"Disease: "},{"color":"gray","italic":false,"text":"$(disease) ($(disease_progression)%)"}]'
execute as @n[type=item_display,tag=gw_write_lore] run data modify entity @s item.components.minecraft:lore append value '[{"color":"white","italic":false,"text":"-------------------------------"}]'

#Clone Display Entity Item to Player
item replace entity @s weapon.mainhand from entity @n[type=item_display,tag=gw_write_lore] container.0

#Kill Display Entity
kill @n[type=item_display,tag=gw_write_lore]
