execute if score #index voxelsmith.value >= #length voxelsmith.value run return 0

    function voxelsmith:start_smithing/set_material_properties with storage voxelsmith:smithing materials[0]

    data modify storage voxelsmith:smithing materials append from storage voxelsmith:smithing materials[0]
    data remove storage voxelsmith:smithing materials[0]

scoreboard players add #index voxelsmith.value 1
function voxelsmith:start_smithing/material_loop/loop