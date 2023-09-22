scoreboard players set #tick5 kingsandcastles.value 0

# Summon smithing ingot
execute as @e[type=item] if predicate kingsandcastles:smithing/is_vanilla_ingot at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=item_display,tag=kingsandcastles.metal_shape,distance=..0.5,sort=nearest,limit=1] if block ~ ~-1 ~ anvil run function kingsandcastles:smithing/start_smithing/vanilla
execute as @e[type=item,nbt={Item:{tag:{kingsandcastles:{smithing_ingot:1b}}}}] at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=item_display,tag=kingsandcastles.metal_shape,distance=..0.5,sort=nearest,limit=1] if block ~ ~-1 ~ anvil run function kingsandcastles:smithing/start_smithing/main

# Kill ingots
execute as @e[type=item_display,tag=kingsandcastles.metal_shape] at @s unless block ~ ~-1 ~ anvil run function kingsandcastles:smithing/metal_shape/kill

# Display GUI
execute as @a if predicate kingsandcastles:smithing/holding_hammer at @s anchored eyes positioned ^ ^ ^0.5 run function kingsandcastles:smithing/hammer/check_if_smithing