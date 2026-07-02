data modify storage voxelsmith:temperature slot set value 0
execute store result storage voxelsmith:temperature timestamp int 1 run time query gametime
data modify storage voxelsmith:temperature temperature set from entity @e[type=marker,tag=voxelsmith.voxel_shape,sort=nearest,limit=1] data.temperature
function voxelsmith:temperature/update_item with storage voxelsmith:temperature