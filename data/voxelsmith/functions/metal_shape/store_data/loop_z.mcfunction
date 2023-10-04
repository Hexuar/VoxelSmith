execute if score #voxel.z voxelsmith.value > #max.z voxelsmith.value run return 0


    #tellraw Hexuar [{"text":"z: "},{"score":{"name": "#voxel.z","objective": "voxelsmith.value"}}]

    scoreboard players set #is_occupied voxelsmith.value 0
    execute as @e[type=interaction,tag=voxelsmith.metal_voxel,tag=voxelsmith.current_ingot] run function voxelsmith:metal_shape/store_data/get_match
    execute if score #is_occupied voxelsmith.value matches 1 run function voxelsmith:metal_voxel/store_data

scoreboard players add #voxel.z voxelsmith.value 1
function voxelsmith:metal_shape/store_data/loop_z