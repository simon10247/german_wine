function german_wine:debug_message/message {message:"interaction/item_attacked"}
#Called by: interaction/find_attacked

#Look for Selected Item
execute if entity @p[tag=interaction_click,predicate=german_wine:selected_item_shovel] run function german_wine:grape_vine/interacting/break
