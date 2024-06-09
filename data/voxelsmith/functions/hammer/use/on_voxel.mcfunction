data remove entity @s attack

# Get Current Ingot
scoreboard players operation #temp voxelsmith.value = @s voxelsmith.ingotID
execute as @e[type=#voxelsmith:voxel_shape_entities] if score @s voxelsmith.ingotID = #temp voxelsmith.value run tag @s add voxelsmith.current_ingot

# Sound
execute store result storage voxelsmith:data pitch float 0.01 run random value 90..100
data modify storage voxelsmith:data surface set from entity @e[type=marker,tag=voxelsmith.current_ingot,tag=voxelsmith.voxel_shape,limit=1] data.surface
function voxelsmith:hammer/playsound with storage voxelsmith:data

# Advancements
execute unless score #hammer_mode voxelsmith.value matches 1 run advancement grant @p only voxelsmith:tutorial/hit_voxel
execute if score #hammer_mode voxelsmith.value matches 1 run advancement grant @p only voxelsmith:tutorial/destroy_voxel

# Kill if right clicked
execute if score #hammer_mode voxelsmith.value matches 1 run function voxelsmith:voxel/kill

# Move Voxel
execute if score #is_sneaking voxelsmith.value matches 0 run function voxelsmith:hammer/move_voxel/forwards
execute if score #is_sneaking voxelsmith.value matches 1 run function voxelsmith:hammer/move_voxel/backwards
function voxelsmith:voxel/move_down
function voxelsmith:voxel/move_up
function voxelsmith:voxel/update_pos

execute unless score @s voxelsmith.pos.x matches 0..15 run function voxelsmith:voxel/kill
execute unless score @s voxelsmith.pos.y matches 0..15 run function voxelsmith:voxel/kill
execute unless score @s voxelsmith.pos.z matches 0..15 run function voxelsmith:voxel/kill

execute as @e[type=marker,tag=voxelsmith.current_ingot,tag=voxelsmith.voxel_shape] run function voxelsmith:voxel_shape/store_data
tag @e remove voxelsmith.current_ingot