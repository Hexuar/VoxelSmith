execute if score #voxel.z voxelsmith.value > #max.z voxelsmith.value run return 0

    scoreboard players set #is_occupied voxelsmith.value 0
    execute as @e[type=interaction,tag=voxelsmith.voxel,tag=voxelsmith.current_ingot,distance=..2] run function voxelsmith:voxel_shape/store_data/get_match
    execute if score #is_occupied voxelsmith.value matches 1 run function voxelsmith:voxel/store_data

scoreboard players add #voxel.z voxelsmith.value 1
function voxelsmith:voxel_shape/store_data/loop_z