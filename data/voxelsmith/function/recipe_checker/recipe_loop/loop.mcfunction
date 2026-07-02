execute if score #recipe_index voxelsmith.value >= #recipe_length voxelsmith.value run return 0


    data modify storage voxelsmith:input shape set from storage voxelsmith:smithing recipes[0].shape
    function voxelsmith:recipe_checker/compare_recipe
    execute if score #bool voxelsmith.value matches 0 run function voxelsmith:recipe_checker/material_loop/init

    data modify storage voxelsmith:smithing recipes append from storage voxelsmith:smithing recipes[0]
    data remove storage voxelsmith:smithing recipes[0]

scoreboard players add #recipe_index voxelsmith.value 1
function voxelsmith:recipe_checker/recipe_loop/loop