execute if score #voxel.z kingsandcastles.value > #max.z kingsandcastles.value run return 0


    #tellraw Hexuar [{"text":"z: "},{"score":{"name": "#voxel.z","objective": "kingsandcastles.value"}}]

    scoreboard players set #is_occupied kingsandcastles.value 0
    execute as @e[type=interaction,tag=kingsandcastles.metal_voxel,tag=kingsandcastles.current_ingot] run function kingsandcastles:smithing/metal_shape/store_data/get_match
    execute if score #is_occupied kingsandcastles.value matches 1 run function kingsandcastles:smithing/metal_voxel/store_data

scoreboard players add #voxel.z kingsandcastles.value 1
function kingsandcastles:smithing/metal_shape/store_data/loop_z