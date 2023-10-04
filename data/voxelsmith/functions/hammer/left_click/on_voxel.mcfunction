data remove entity @s attack

execute if score #current_hammer_mode voxelsmith.hammer_mode matches 0 run function voxelsmith:hammer/dir/forwards
execute if score #current_hammer_mode voxelsmith.hammer_mode matches 1 run function voxelsmith:hammer/dir/right
execute if score #current_hammer_mode voxelsmith.hammer_mode matches 2 run function voxelsmith:hammer/dir/back
execute if score #current_hammer_mode voxelsmith.hammer_mode matches 3 run function voxelsmith:hammer/dir/left
execute if score #current_hammer_mode voxelsmith.hammer_mode matches 4 run function voxelsmith:metal_voxel/kill

tag @s add voxelsmith.this


# Update position (if floating or in another voxel)
tag @s add voxelsmith.check_next_tick
schedule function voxelsmith:hammer/voxel_update/check 2t
#schedule function voxelsmith:hammer/voxel_update/kill 1t