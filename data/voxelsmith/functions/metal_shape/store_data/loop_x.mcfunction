execute if score #voxel.x voxelsmith.value > #max.x voxelsmith.value run return 0

    function voxelsmith:metal_shape/store_data/loop_y
    scoreboard players operation #voxel.y voxelsmith.value = #min.y voxelsmith.value


scoreboard players add #voxel.x voxelsmith.value 1
function voxelsmith:metal_shape/store_data/loop_x