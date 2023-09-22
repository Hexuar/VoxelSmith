scoreboard players set #tick10 kingsandcastles.value 0


# Iron

execute as @e[type=item,nbt={Item:{Count:1b,tag:{kingsandcastles:{iron_blade:1b}}}},limit=1] at @s if block ~ ~-1 ~ anvil as @e[type=item,nbt={Item:{Count:1b,tag:{kingsandcastles:{iron_crossguard:1b}}}},limit=1] as @e[type=item,nbt={Item:{Count:1b,tag:{kingsandcastles:{iron_pommel:1b}}}},limit=1] as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:1b}},distance=..1,sort=nearest,limit=1] run function kingsandcastles:smithing/ground_recipes/iron_sword

execute as @e[type=item,nbt={Item:{Count:1b,tag:{kingsandcastles:{iron_shovel_head:1b}}}},limit=1] at @s if block ~ ~-1 ~ anvil as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:2b}},distance=..1,sort=nearest,limit=1] run function kingsandcastles:smithing/ground_recipes/iron_shovel

execute as @e[type=item,nbt={Item:{Count:1b,tag:{kingsandcastles:{iron_hoe_head:1b}}}},limit=1] at @s if block ~ ~-1 ~ anvil as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:2b}},distance=..1,sort=nearest,limit=1] run function kingsandcastles:smithing/ground_recipes/iron_hoe

execute as @e[type=item,nbt={Item:{Count:1b,tag:{kingsandcastles:{iron_pickaxe_head:1b}}}},limit=1] at @s if block ~ ~-1 ~ anvil as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:2b}},distance=..1,sort=nearest,limit=1] run function kingsandcastles:smithing/ground_recipes/iron_pickaxe

execute as @e[type=item,nbt={Item:{Count:1b,tag:{kingsandcastles:{iron_axe_head:1b}}}},limit=1] at @s if block ~ ~-1 ~ anvil as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:2b}},distance=..1,sort=nearest,limit=1] run function kingsandcastles:smithing/ground_recipes/iron_axe

execute as @e[type=item,nbt={Item:{Count:1b,tag:{kingsandcastles:{iron_hammer_head:1b}}}},limit=1] at @s if block ~ ~-1 ~ anvil as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:2b}},distance=..1,sort=nearest,limit=1] run function kingsandcastles:smithing/ground_recipes/iron_hammer


# Gold

execute as @e[type=item,nbt={Item:{Count:1b,tag:{kingsandcastles:{golden_blade:1b}}}},limit=1] at @s if block ~ ~-1 ~ anvil as @e[type=item,nbt={Item:{Count:1b,tag:{kingsandcastles:{golden_crossguard:1b}}}},limit=1] as @e[type=item,nbt={Item:{Count:1b,tag:{kingsandcastles:{golden_pommel:1b}}}},limit=1] as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:1b}},distance=..1,sort=nearest,limit=1] run function kingsandcastles:smithing/ground_recipes/golden_sword

execute as @e[type=item,nbt={Item:{Count:1b,tag:{kingsandcastles:{golden_shovel_head:1b}}}},limit=1] at @s if block ~ ~-1 ~ anvil as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:2b}},distance=..1,sort=nearest,limit=1] run function kingsandcastles:smithing/ground_recipes/golden_shovel

execute as @e[type=item,nbt={Item:{Count:1b,tag:{kingsandcastles:{golden_hoe_head:1b}}}},limit=1] at @s if block ~ ~-1 ~ anvil as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:2b}},distance=..1,sort=nearest,limit=1] run function kingsandcastles:smithing/ground_recipes/golden_hoe

execute as @e[type=item,nbt={Item:{Count:1b,tag:{kingsandcastles:{golden_pickaxe_head:1b}}}},limit=1] at @s if block ~ ~-1 ~ anvil as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:2b}},distance=..1,sort=nearest,limit=1] run function kingsandcastles:smithing/ground_recipes/golden_pickaxe

execute as @e[type=item,nbt={Item:{Count:1b,tag:{kingsandcastles:{golden_axe_head:1b}}}},limit=1] at @s if block ~ ~-1 ~ anvil as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:2b}},distance=..1,sort=nearest,limit=1] run function kingsandcastles:smithing/ground_recipes/golden_axe

execute as @e[type=item,nbt={Item:{Count:1b,tag:{kingsandcastles:{golden_hammer_head:1b}}}},limit=1] at @s if block ~ ~-1 ~ anvil as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:2b}},distance=..1,sort=nearest,limit=1] run function kingsandcastles:smithing/ground_recipes/golden_hammer


# Netherite

execute as @e[type=item,nbt={Item:{Count:1b,tag:{kingsandcastles:{netherite_blade:1b}}}},limit=1] at @s if block ~ ~-1 ~ anvil as @e[type=item,nbt={Item:{Count:1b,tag:{kingsandcastles:{netherite_crossguard:1b}}}},limit=1] as @e[type=item,nbt={Item:{Count:1b,tag:{kingsandcastles:{netherite_pommel:1b}}}},limit=1] as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:1b}},distance=..1,sort=nearest,limit=1] run function kingsandcastles:smithing/ground_recipes/netherite_sword

execute as @e[type=item,nbt={Item:{Count:1b,tag:{kingsandcastles:{netherite_shovel_head:1b}}}},limit=1] at @s if block ~ ~-1 ~ anvil as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:2b}},distance=..1,sort=nearest,limit=1] run function kingsandcastles:smithing/ground_recipes/netherite_shovel

execute as @e[type=item,nbt={Item:{Count:1b,tag:{kingsandcastles:{netherite_hoe_head:1b}}}},limit=1] at @s if block ~ ~-1 ~ anvil as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:2b}},distance=..1,sort=nearest,limit=1] run function kingsandcastles:smithing/ground_recipes/netherite_hoe

execute as @e[type=item,nbt={Item:{Count:1b,tag:{kingsandcastles:{netherite_pickaxe_head:1b}}}},limit=1] at @s if block ~ ~-1 ~ anvil as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:2b}},distance=..1,sort=nearest,limit=1] run function kingsandcastles:smithing/ground_recipes/netherite_pickaxe

execute as @e[type=item,nbt={Item:{Count:1b,tag:{kingsandcastles:{netherite_axe_head:1b}}}},limit=1] at @s if block ~ ~-1 ~ anvil as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:2b}},distance=..1,sort=nearest,limit=1] run function kingsandcastles:smithing/ground_recipes/netherite_axe

execute as @e[type=item,nbt={Item:{Count:1b,tag:{kingsandcastles:{netherite_hammer_head:1b}}}},limit=1] at @s if block ~ ~-1 ~ anvil as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:2b}},distance=..1,sort=nearest,limit=1] run function kingsandcastles:smithing/ground_recipes/netherite_hammer