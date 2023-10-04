execute as @e[type=item_display,tag=voxelsmith.store_data_next_tick] run scoreboard players operation #temp voxelsmith.value = @s voxelsmith.ingotID
execute as @e[type=interaction,tag=voxelsmith.metal_voxel,sort=nearest] if score @s voxelsmith.ingotID = #temp voxelsmith.value run tag @s add voxelsmith.current_ingot

execute as @e[type=item_display,tag=voxelsmith.store_data_next_tick] at @s run function voxelsmith:smithing/metal_shape/store_data
execute as @e[type=item_display,tag=voxelsmith.store_data_next_tick] at @s run function voxelsmith:smithing/metal_shape/kill_far_voxels

tag @e remove voxelsmith.current_ingot
tag @e remove voxelsmith.store_data_next_tick