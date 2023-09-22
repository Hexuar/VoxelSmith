data remove storage kingsandcastles:smithing/data shape

scoreboard players set #max.x kingsandcastles.value 0
scoreboard players set #max.y kingsandcastles.value 0
scoreboard players set #max.z kingsandcastles.value 0

scoreboard players set #min.x kingsandcastles.value 16
scoreboard players set #min.y kingsandcastles.value 16
scoreboard players set #min.z kingsandcastles.value 16

execute as @e[type=interaction,tag=kingsandcastles.metal_voxel,tag=kingsandcastles.current_ingot] run function kingsandcastles:smithing/metal_shape/store_data/get_limits

scoreboard players operation #voxel.x kingsandcastles.value = #min.x kingsandcastles.value
scoreboard players operation #voxel.y kingsandcastles.value = #min.y kingsandcastles.value
scoreboard players operation #voxel.z kingsandcastles.value = #min.z kingsandcastles.value

#tellraw Hexuar [{"text":"Min: "},{"score":{"name": "#min.x","objective": "kingsandcastles.value"}},{"text":","},{"score":{"name": "#min.y","objective": "kingsandcastles.value"}},{"text":","},{"score":{"name": "#min.z","objective": "kingsandcastles.value"}},{"text":" Max: "},{"score":{"name": "#max.x","objective": "kingsandcastles.value"}},{"text":","},{"score":{"name": "#max.y","objective": "kingsandcastles.value"}},{"text":","},{"score":{"name": "#max.z","objective": "kingsandcastles.value"}}]

function kingsandcastles:smithing/metal_shape/store_data/loop_x

function kingsandcastles:smithing/recipe_checker/recipe_loop/init
schedule function kingsandcastles:smithing/metal_shape/kill_next_tick 1t