execute if score #metal_index kingsandcastles.value >= #metal_length kingsandcastles.value run return 0


    data modify storage kingsandcastles:smithing/input metal set from storage kingsandcastles:smithing recipes[0].metals[0].item
    function kingsandcastles:smithing/recipe_checker/compare_metal
    execute if score #bool kingsandcastles.value matches 0 run function kingsandcastles:smithing/recipe_checker/match

    data modify storage kingsandcastles:smithing recipes[0].metals append from storage kingsandcastles:smithing recipes[0].metals[0]
    data remove storage kingsandcastles:smithing recipes[0].metals[0]


scoreboard players add #metal_index kingsandcastles.value 1
function kingsandcastles:smithing/recipe_checker/metal_loop/loop