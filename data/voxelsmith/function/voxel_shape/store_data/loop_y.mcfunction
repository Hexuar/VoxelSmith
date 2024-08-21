execute if score #voxel.y voxelsmith.value > #max.y voxelsmith.value run return 0

    function voxelsmith:voxel_shape/store_data/loop_z
    scoreboard players operation #voxel.z voxelsmith.value = #min.z voxelsmith.value


scoreboard players add #voxel.y voxelsmith.value 1
function voxelsmith:voxel_shape/store_data/loop_y