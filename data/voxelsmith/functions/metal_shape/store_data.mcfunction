data remove storage voxelsmith:data shape

scoreboard players set #max.x voxelsmith.value 0
scoreboard players set #max.y voxelsmith.value 0
scoreboard players set #max.z voxelsmith.value 0

scoreboard players set #min.x voxelsmith.value 16
scoreboard players set #min.y voxelsmith.value 16
scoreboard players set #min.z voxelsmith.value 16

execute as @e[type=interaction,tag=voxelsmith.metal_voxel,tag=voxelsmith.current_ingot] run function voxelsmith:metal_shape/store_data/get_limits

scoreboard players operation #voxel.x voxelsmith.value = #min.x voxelsmith.value
scoreboard players operation #voxel.y voxelsmith.value = #min.y voxelsmith.value
scoreboard players operation #voxel.z voxelsmith.value = #min.z voxelsmith.value

#tellraw Hexuar [{"text":"Min: "},{"score":{"name": "#min.x","objective": "voxelsmith.value"}},{"text":","},{"score":{"name": "#min.y","objective": "voxelsmith.value"}},{"text":","},{"score":{"name": "#min.z","objective": "voxelsmith.value"}},{"text":" Max: "},{"score":{"name": "#max.x","objective": "voxelsmith.value"}},{"text":","},{"score":{"name": "#max.y","objective": "voxelsmith.value"}},{"text":","},{"score":{"name": "#max.z","objective": "voxelsmith.value"}}]

function voxelsmith:metal_shape/store_data/loop_x

function voxelsmith:recipe_checker/recipe_loop/init
schedule function voxelsmith:metal_shape/kill_next_tick 1t