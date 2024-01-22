execute on passengers run kill @s
kill @s

scoreboard players set #voxel_count voxelsmith.value 0
execute as @e[type=interaction,tag=voxelsmith.current_ingot] run scoreboard players add #voxel_count voxelsmith.value 1

execute if score #voxel_count voxelsmith.value matches 0 run kill @e[type=marker,tag=voxelsmith.current_ingot,tag=voxelsmith.metal_shape,sort=nearest]
