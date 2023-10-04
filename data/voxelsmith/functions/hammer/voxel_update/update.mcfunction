execute if entity @e[type=interaction,tag=voxelsmith.metal_voxel,tag=!voxelsmith.check_next_tick,sort=nearest,limit=1,distance=..0.03125] run function voxelsmith:hammer/voxel_update/move_up

execute positioned ~ ~-0.0625 ~ unless entity @e[type=interaction,tag=voxelsmith.metal_voxel,tag=!voxelsmith.check_next_tick,sort=nearest,limit=1,distance=..0.03125] unless block ~ ~ ~ anvil run function voxelsmith:hammer/voxel_update/move_down

# Store current shape data
scoreboard players operation #temp voxelsmith.value = @s voxelsmith.ingotID
execute as @e[type=item_display,tag=voxelsmith.metal_shape,sort=nearest] if score @s voxelsmith.ingotID = #temp voxelsmith.value run tag @s add voxelsmith.current_ingot

tag @e[type=item_display,tag=voxelsmith.current_ingot] add voxelsmith.store_data_next_tick
schedule function voxelsmith:metal_shape/store_data_next_tick 1t

tag @e remove voxelsmith.current_ingot


# remove tag
tag @s remove voxelsmith.check_next_tick