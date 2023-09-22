execute if score #voxel.y kingsandcastles.value > #max.y kingsandcastles.value run return 0

    
    #tellraw Hexuar [{"text":"y: "},{"score":{"name": "#voxel.y","objective": "kingsandcastles.value"}}]
    function kingsandcastles:smithing/metal_shape/store_data/loop_z
    scoreboard players operation #voxel.z kingsandcastles.value = #min.z kingsandcastles.value


scoreboard players add #voxel.y kingsandcastles.value 1
function kingsandcastles:smithing/metal_shape/store_data/loop_y