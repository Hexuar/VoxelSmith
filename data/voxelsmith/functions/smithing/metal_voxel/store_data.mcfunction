scoreboard players operation #current.x voxelsmith.value = #voxel.x voxelsmith.value
scoreboard players operation #current.y voxelsmith.value = #voxel.y voxelsmith.value
scoreboard players operation #current.z voxelsmith.value = #voxel.z voxelsmith.value

scoreboard players operation #current.x voxelsmith.value -= #min.x voxelsmith.value
scoreboard players operation #current.y voxelsmith.value -= #min.y voxelsmith.value
scoreboard players operation #current.z voxelsmith.value -= #min.z voxelsmith.value

execute store result storage voxelsmith:smithing/data temp.x int 1 run scoreboard players get #current.x voxelsmith.value
execute store result storage voxelsmith:smithing/data temp.y int 1 run scoreboard players get #current.y voxelsmith.value
execute store result storage voxelsmith:smithing/data temp.z int 1 run scoreboard players get #current.z voxelsmith.value

data modify storage voxelsmith:smithing/data shape append from storage voxelsmith:smithing/data temp