function german_wine:debug_message/message {message:"durability_editing/durability_depleation"}

#Summon Display Entity
summon item_display ~ ~ ~ {Tags:["gw_durability_depleation"],transformation:{scale:[0f,0f,0f]}}

#Clone Selected Item to Display Entity
item replace entity @n[type=item_display,tag=gw_durability_depleation] container.0 from entity @s weapon.mainhand

#Calculate Durability
execute as @n[type=item_display,tag=gw_durability_depleation] run function german_wine:durability_editing/calculate

#Clone Display Entity Item to Player
item replace entity @s weapon.mainhand from entity @n[type=item_display,tag=gw_durability_depleation] container.0

#Kill Display Entity
kill @n[type=item_display,tag=gw_durability_depleation]
