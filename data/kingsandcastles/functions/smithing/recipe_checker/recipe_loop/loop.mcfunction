execute if score #recipe_index kingsandcastles.value >= #recipe_length kingsandcastles.value run return 0


    data modify storage kingsandcastles:smithing/input shape set from storage kingsandcastles:smithing recipes[0].shape
    function kingsandcastles:smithing/recipe_checker/compare_recipe
    execute if score #bool kingsandcastles.value matches 0 run function kingsandcastles:smithing/recipe_checker/metal_loop/init

    data modify storage kingsandcastles:smithing recipes append from storage kingsandcastles:smithing recipes[0]
    data remove storage kingsandcastles:smithing recipes[0]


scoreboard players add #recipe_index kingsandcastles.value 1
function kingsandcastles:smithing/recipe_checker/recipe_loop/loop