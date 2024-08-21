execute if score #is_sneaking voxelsmith.value matches 0 run function voxelsmith:hammer/move_voxel/forwards
execute if score #is_sneaking voxelsmith.value matches 1 run function voxelsmith:hammer/move_voxel/backwards
function voxelsmith:voxel/move_down
function voxelsmith:voxel/move_up
function voxelsmith:voxel/update_pos

execute unless score @s voxelsmith.pos.x matches 0..15 run function voxelsmith:voxel/kill
execute unless score @s voxelsmith.pos.y matches 0..15 run function voxelsmith:voxel/kill
execute unless score @s voxelsmith.pos.z matches 0..15 run function voxelsmith:voxel/kill