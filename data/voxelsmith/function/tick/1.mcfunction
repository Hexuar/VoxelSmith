# Kill ingots
execute at @a as @e[type=marker,tag=voxelsmith.voxel_shape,tag=!voxelsmith.knapping_shape,distance=..16] at @s unless block ~ ~-0.1 ~ #anvil run function voxelsmith:voxel_shape/refund/get
execute at @a as @e[type=marker,tag=voxelsmith.knapping_shape,distance=..16] at @s unless block ~ ~-0.1 ~ #voxelsmith:knapping_surface run function voxelsmith:voxel_shape/refund/get

# Damage players
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{voxelsmith:{has_temperature:1b}}}}}] unless entity @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{voxelsmith:{tongs:1b}}}}]}] run function voxelsmith:hot_item/player/mainhand
execute as @a[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{voxelsmith:{has_temperature:1b}}}}]}] unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{voxelsmith:{tongs:1b}}}}}] run function voxelsmith:hot_item/player/offhand
execute as @a if predicate voxelsmith:has_hot_armor run function voxelsmith:hot_item/player/armor