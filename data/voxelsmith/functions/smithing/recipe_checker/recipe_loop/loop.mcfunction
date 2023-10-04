execute if score #recipe_index voxelsmith.value >= #recipe_length voxelsmith.value run return 0


    data modify storage voxelsmith:smithing/input shape set from storage voxelsmith:smithing recipes[0].shape
    function voxelsmith:smithing/recipe_checker/compare_recipe
    execute if score #bool voxelsmith.value matches 0 run function voxelsmith:smithing/recipe_checker/metal_loop/init

    data modify storage voxelsmith:smithing recipes append from storage voxelsmith:smithing recipes[0]
    data remove storage voxelsmith:smithing recipes[0]


scoreboard players add #recipe_index voxelsmith.value 1
function voxelsmith:smithing/recipe_checker/recipe_loop/loop