data remove entity @s attack

scoreboard players operation #temp voxelsmith.value = @s voxelsmith.ingotID
execute as @e[type=#voxelsmith:metal_shape_entities] if score @s voxelsmith.ingotID = #temp voxelsmith.value run tag @s add voxelsmith.current_ingot

execute if score #current_hammer_mode voxelsmith.hammer_mode matches 0 run function voxelsmith:hammer/dir/forwards
execute if score #current_hammer_mode voxelsmith.hammer_mode matches 1 run function voxelsmith:hammer/dir/right
execute if score #current_hammer_mode voxelsmith.hammer_mode matches 2 run function voxelsmith:hammer/dir/back
execute if score #current_hammer_mode voxelsmith.hammer_mode matches 3 run function voxelsmith:hammer/dir/left
execute if score #current_hammer_mode voxelsmith.hammer_mode matches 4 run function voxelsmith:metal_voxel/kill



function voxelsmith:metal_voxel/move_down
function voxelsmith:metal_voxel/move_up

function voxelsmith:metal_voxel/update_pos

execute unless score @s voxelsmith.pos.x matches 0..15 run function voxelsmith:metal_voxel/kill
execute unless score @s voxelsmith.pos.y matches 0..15 run function voxelsmith:metal_voxel/kill
execute unless score @s voxelsmith.pos.z matches 0..15 run function voxelsmith:metal_voxel/kill

execute as @e[type=item_display,tag=voxelsmith.current_ingot,tag=voxelsmith.metal_shape] run function voxelsmith:metal_shape/store_data
tag @e remove voxelsmith.current_ingot