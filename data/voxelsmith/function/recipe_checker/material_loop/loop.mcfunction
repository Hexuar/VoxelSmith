execute if score #material_index voxelsmith.value >= #material_length voxelsmith.value run return 0


    data modify storage voxelsmith:input material set from storage voxelsmith:smithing recipes[0].materials[0].item
    function voxelsmith:recipe_checker/compare_material
    execute if score #bool voxelsmith.value matches 0 run function voxelsmith:recipe_checker/match

    data modify storage voxelsmith:smithing recipes[0].materials append from storage voxelsmith:smithing recipes[0].materials[0]
    data remove storage voxelsmith:smithing recipes[0].materials[0]


scoreboard players add #material_index voxelsmith.value 1
function voxelsmith:recipe_checker/material_loop/loop