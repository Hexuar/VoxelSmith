execute if score #index voxelsmith.value >= #length voxelsmith.value run return 0

    execute store result storage voxelsmith:data index int 1 run scoreboard players get #index voxelsmith.value

    function voxelsmith:blueprints/summon_shape/get_voxel_data with storage voxelsmith:data

    scoreboard players operation #pos.x voxelsmith.value /= #16 voxelsmith.value
    scoreboard players operation #pos.y voxelsmith.value /= #16 voxelsmith.value
    scoreboard players operation #pos.z voxelsmith.value /= #16 voxelsmith.value

    #tellraw Hexuar {"score":{"name": "#pos.x","objective": "voxelsmith.value"}}

    data modify storage voxelsmith:data temp set value {}
    execute store result storage voxelsmith:data temp.x float 0.001 run scoreboard players get #pos.x voxelsmith.value
    execute store result storage voxelsmith:data temp.y float 0.001 run scoreboard players get #pos.y voxelsmith.value
    execute store result storage voxelsmith:data temp.z float 0.001 run scoreboard players get #pos.z voxelsmith.value

    function voxelsmith:blueprints/summon_voxel with storage voxelsmith:data temp


scoreboard players add #index voxelsmith.value 1
execute run function voxelsmith:blueprints/summon_shape/voxel_loop



