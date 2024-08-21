function voxelsmith:voxel/color/get_index with storage voxelsmith:data
execute if score #requiresHeat voxelsmith.value matches 1 run function voxelsmith:voxel/color/get with storage voxelsmith:data
execute if score #requiresHeat voxelsmith.value matches 0 run function voxelsmith:voxel/color/get_from_palette with storage voxelsmith:data

function voxelsmith:voxel/summon_text_voxel with storage voxelsmith:data


execute as @e[type=interaction,tag=voxelsmith.voxel,tag=voxelsmith.new,sort=nearest,limit=1] run function voxelsmith:voxel/store_pos


tag @e[tag=voxelsmith.new] remove voxelsmith.new