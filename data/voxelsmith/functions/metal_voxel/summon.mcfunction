function voxelsmith:metal_voxel/color/get_index with storage voxelsmith:data
function voxelsmith:metal_voxel/color/get with storage voxelsmith:data

function voxelsmith:metal_voxel/summon_text_voxel with storage voxelsmith:data


execute as @e[type=interaction,tag=voxelsmith.metal_voxel,tag=voxelsmith.new,sort=nearest,limit=1] run function voxelsmith:metal_voxel/store_pos


tag @e[tag=voxelsmith.new] remove voxelsmith.new