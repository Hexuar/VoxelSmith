execute if score #voxel.y voxelsmith.value > #max.y voxelsmith.value run return 0

    
    #tellraw Hexuar [{"text":"y: "},{"score":{"name": "#voxel.y","objective": "voxelsmith.value"}}]
    function voxelsmith:metal_shape/store_data/loop_z
    scoreboard players operation #voxel.z voxelsmith.value = #min.z voxelsmith.value


scoreboard players add #voxel.y voxelsmith.value 1
function voxelsmith:metal_shape/store_data/loop_y