execute if score #voxel.x kingsandcastles.value > #max.x kingsandcastles.value run return 0

    
    #tellraw Hexuar [{"text":"x: "},{"score":{"name": "#voxel.x","objective": "kingsandcastles.value"}}]
    function kingsandcastles:smithing/metal_shape/store_data/loop_y
    scoreboard players operation #voxel.y kingsandcastles.value = #min.y kingsandcastles.value


scoreboard players add #voxel.x kingsandcastles.value 1
function kingsandcastles:smithing/metal_shape/store_data/loop_x