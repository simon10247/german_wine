say [debug] interaction/item_targeted

#Look for Selected Item
execute if entity @p[tag=interaction_click,nbt={SelectedItem:{id:"minecraft:shears"}}] run function german_wine:grape_vine/interacting/harvest
execute if entity @p[tag=interaction_click,nbt={SelectedItem:{components:{"minecraft:custom_data":{gw_refractometer:1b}}}}] run function german_wine:grape_vine/progression/refractometer