advancement revoke @s only voxelsmith:smithing/right_click_metal_voxel

scoreboard players add @s voxelsmith.hammer_mode 1
execute if score @s voxelsmith.hammer_mode >= #hammer_modes voxelsmith.hammer_mode run scoreboard players set @s voxelsmith.hammer_mode 0