function german_wine:debug_message/message {message:"grape_vine/progression/reset_lore"}
execute unless data entity @s SelectedItem.components.minecraft:custom_data{gw:{refractometer:1b}} run function german_wine:debug_message/message {message:"reset_lore (fail!)"}

#Summon Display Entity
execute if data entity @s SelectedItem.components.minecraft:custom_data{gw:{refractometer:1b}} run summon item_display ~ ~ ~ {Tags:["gw_reset_lore"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}

#Clone Selected Item to Display Entity
item replace entity @n[type=item_display,tag=gw_reset_lore] container.0 from entity @s weapon.mainhand

#Reset Lore
execute as @n[type=item_display,tag=gw_reset_lore] run data modify entity @s item.components.minecraft:lore[] set value ""

#Clone Display Entity Item to Player
item replace entity @s weapon.mainhand from entity @n[type=item_display,tag=gw_reset_lore] container.0

#Kill Display Entity
kill @n[type=item_display,tag=gw_reset_lore]

#Reset Warped Right Click Score
scoreboard players reset @s gw_warped_right_click
