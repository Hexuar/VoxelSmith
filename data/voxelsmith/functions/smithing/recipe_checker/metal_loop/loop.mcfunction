execute if score #metal_index voxelsmith.value >= #metal_length voxelsmith.value run return 0


    data modify storage voxelsmith:smithing/input metal set from storage voxelsmith:smithing recipes[0].metals[0].item
    function voxelsmith:smithing/recipe_checker/compare_metal
    execute if score #bool voxelsmith.value matches 0 run function voxelsmith:smithing/recipe_checker/match

    data modify storage voxelsmith:smithing recipes[0].metals append from storage voxelsmith:smithing recipes[0].metals[0]
    data remove storage voxelsmith:smithing recipes[0].metals[0]


scoreboard players add #metal_index voxelsmith.value 1
function voxelsmith:smithing/recipe_checker/metal_loop/loop