# Hot Items
execute as @e[type=item] if predicate voxelsmith:item/is_ingot if predicate voxelsmith:item/is_not_foreign at @s if block ~ ~-1 ~ magma_block run function voxelsmith:ground_recipes/temperature/heat_item
execute as @e[type=item,nbt={Item:{tag:{voxelsmith:{has_temperature:1b}}}}] at @s if block ~ ~ ~ #voxelsmith:water_blocks run function voxelsmith:ground_recipes/temperature/cool_item
execute as @e[type=item,nbt={Item:{tag:{voxelsmith:{has_temperature:1b}}}}] at @s if block ~ ~ ~ #voxelsmith:waterloggable[waterlogged=true] run function voxelsmith:ground_recipes/temperature/cool_item


# Iron

execute as @e[type=item,nbt={Item:{Count:1b,tag:{voxelsmith:{iron_blade:1b}}}},limit=1] at @s if block ~ ~-1 ~ anvil as @e[type=item,nbt={Item:{Count:1b,tag:{voxelsmith:{iron_crossguard:1b}}}},limit=1] as @e[type=item,nbt={Item:{Count:1b,tag:{voxelsmith:{iron_pommel:1b}}}},limit=1] as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:1b}},distance=..1,sort=nearest,limit=1] run function voxelsmith:ground_recipes/iron_sword

execute as @e[type=item,nbt={Item:{Count:1b,tag:{voxelsmith:{iron_shovel_head:1b}}}},limit=1] at @s if block ~ ~-1 ~ anvil as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:2b}},distance=..1,sort=nearest,limit=1] run function voxelsmith:ground_recipes/iron_shovel

execute as @e[type=item,nbt={Item:{Count:1b,tag:{voxelsmith:{iron_hoe_head:1b}}}},limit=1] at @s if block ~ ~-1 ~ anvil as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:2b}},distance=..1,sort=nearest,limit=1] run function voxelsmith:ground_recipes/iron_hoe

execute as @e[type=item,nbt={Item:{Count:1b,tag:{voxelsmith:{iron_pickaxe_head:1b}}}},limit=1] at @s if block ~ ~-1 ~ anvil as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:2b}},distance=..1,sort=nearest,limit=1] run function voxelsmith:ground_recipes/iron_pickaxe

execute as @e[type=item,nbt={Item:{Count:1b,tag:{voxelsmith:{iron_axe_head:1b}}}},limit=1] at @s if block ~ ~-1 ~ anvil as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:2b}},distance=..1,sort=nearest,limit=1] run function voxelsmith:ground_recipes/iron_axe

execute as @e[type=item,nbt={Item:{Count:1b,tag:{voxelsmith:{iron_hammer_head:1b}}}},limit=1] at @s if block ~ ~-1 ~ anvil as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:2b}},distance=..1,sort=nearest,limit=1] run function voxelsmith:ground_recipes/iron_hammer


# Gold

execute as @e[type=item,nbt={Item:{Count:1b,tag:{voxelsmith:{golden_blade:1b}}}},limit=1] at @s if block ~ ~-1 ~ anvil as @e[type=item,nbt={Item:{Count:1b,tag:{voxelsmith:{golden_crossguard:1b}}}},limit=1] as @e[type=item,nbt={Item:{Count:1b,tag:{voxelsmith:{golden_pommel:1b}}}},limit=1] as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:1b}},distance=..1,sort=nearest,limit=1] run function voxelsmith:ground_recipes/golden_sword

execute as @e[type=item,nbt={Item:{Count:1b,tag:{voxelsmith:{golden_shovel_head:1b}}}},limit=1] at @s if block ~ ~-1 ~ anvil as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:2b}},distance=..1,sort=nearest,limit=1] run function voxelsmith:ground_recipes/golden_shovel

execute as @e[type=item,nbt={Item:{Count:1b,tag:{voxelsmith:{golden_hoe_head:1b}}}},limit=1] at @s if block ~ ~-1 ~ anvil as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:2b}},distance=..1,sort=nearest,limit=1] run function voxelsmith:ground_recipes/golden_hoe

execute as @e[type=item,nbt={Item:{Count:1b,tag:{voxelsmith:{golden_pickaxe_head:1b}}}},limit=1] at @s if block ~ ~-1 ~ anvil as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:2b}},distance=..1,sort=nearest,limit=1] run function voxelsmith:ground_recipes/golden_pickaxe

execute as @e[type=item,nbt={Item:{Count:1b,tag:{voxelsmith:{golden_axe_head:1b}}}},limit=1] at @s if block ~ ~-1 ~ anvil as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:2b}},distance=..1,sort=nearest,limit=1] run function voxelsmith:ground_recipes/golden_axe

execute as @e[type=item,nbt={Item:{Count:1b,tag:{voxelsmith:{golden_hammer_head:1b}}}},limit=1] at @s if block ~ ~-1 ~ anvil as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:2b}},distance=..1,sort=nearest,limit=1] run function voxelsmith:ground_recipes/golden_hammer


# Netherite

execute as @e[type=item,nbt={Item:{Count:1b,tag:{voxelsmith:{netherite_blade:1b}}}},limit=1] at @s if block ~ ~-1 ~ anvil as @e[type=item,nbt={Item:{Count:1b,tag:{voxelsmith:{netherite_crossguard:1b}}}},limit=1] as @e[type=item,nbt={Item:{Count:1b,tag:{voxelsmith:{netherite_pommel:1b}}}},limit=1] as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:1b}},distance=..1,sort=nearest,limit=1] run function voxelsmith:ground_recipes/netherite_sword

execute as @e[type=item,nbt={Item:{Count:1b,tag:{voxelsmith:{netherite_shovel_head:1b}}}},limit=1] at @s if block ~ ~-1 ~ anvil as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:2b}},distance=..1,sort=nearest,limit=1] run function voxelsmith:ground_recipes/netherite_shovel

execute as @e[type=item,nbt={Item:{Count:1b,tag:{voxelsmith:{netherite_hoe_head:1b}}}},limit=1] at @s if block ~ ~-1 ~ anvil as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:2b}},distance=..1,sort=nearest,limit=1] run function voxelsmith:ground_recipes/netherite_hoe

execute as @e[type=item,nbt={Item:{Count:1b,tag:{voxelsmith:{netherite_pickaxe_head:1b}}}},limit=1] at @s if block ~ ~-1 ~ anvil as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:2b}},distance=..1,sort=nearest,limit=1] run function voxelsmith:ground_recipes/netherite_pickaxe

execute as @e[type=item,nbt={Item:{Count:1b,tag:{voxelsmith:{netherite_axe_head:1b}}}},limit=1] at @s if block ~ ~-1 ~ anvil as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:2b}},distance=..1,sort=nearest,limit=1] run function voxelsmith:ground_recipes/netherite_axe

execute as @e[type=item,nbt={Item:{Count:1b,tag:{voxelsmith:{netherite_hammer_head:1b}}}},limit=1] at @s if block ~ ~-1 ~ anvil as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:2b}},distance=..1,sort=nearest,limit=1] run function voxelsmith:ground_recipes/netherite_hammer