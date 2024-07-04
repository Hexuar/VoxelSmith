data remove storage voxelsmith:data shape

scoreboard players set #max.x voxelsmith.value 0
scoreboard players set #max.y voxelsmith.value 0
scoreboard players set #max.z voxelsmith.value 0

scoreboard players set #min.x voxelsmith.value 16
scoreboard players set #min.y voxelsmith.value 16
scoreboard players set #min.z voxelsmith.value 16

execute as @e[type=interaction,tag=voxelsmith.voxel,tag=voxelsmith.current_ingot] run function voxelsmith:voxel_shape/store_data/get_limits

scoreboard players operation #voxel.x voxelsmith.value = #min.x voxelsmith.value
scoreboard players operation #voxel.y voxelsmith.value = #min.y voxelsmith.value
scoreboard players operation #voxel.z voxelsmith.value = #min.z voxelsmith.value

function voxelsmith:voxel_shape/store_data/loop_x

function voxelsmith:recipe_checker/recipe_loop/init