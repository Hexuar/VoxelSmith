scoreboard players set #tick5 voxelsmith.value 0

# Summon smithing ingot
execute as @e[type=item] if predicate voxelsmith:smithing/is_vanilla_ingot at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=item_display,tag=voxelsmith.metal_shape,distance=..0.5,sort=nearest,limit=1] if block ~ ~-1 ~ anvil run function voxelsmith:smithing/start_smithing/vanilla
execute as @e[type=item,nbt={Item:{tag:{voxelsmith:{smithing_ingot:1b}}}}] at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=item_display,tag=voxelsmith.metal_shape,distance=..0.5,sort=nearest,limit=1] if block ~ ~-1 ~ anvil run function voxelsmith:smithing/start_smithing/main

# Kill ingots
execute as @e[type=item_display,tag=voxelsmith.metal_shape] at @s unless block ~ ~-1 ~ anvil run function voxelsmith:smithing/metal_shape/kill

# Display GUI
execute as @a if predicate voxelsmith:smithing/holding_hammer at @s anchored eyes positioned ^ ^ ^0.5 run function voxelsmith:smithing/hammer/check_if_smithing