data modify storage voxelsmith:temperature slots append from storage voxelsmith:temperature slots[0]
data remove storage voxelsmith:temperature slots[0]
data modify storage voxelsmith:temperature slot set from storage voxelsmith:temperature slots[0]

function voxelsmith:hot_ingot/modify_slot with storage voxelsmith:temperature

scoreboard players add #index voxelsmith.value 1
execute if score #index voxelsmith.value < #length voxelsmith.value run function voxelsmith:hot_ingot/loop