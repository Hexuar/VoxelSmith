scoreboard players operation #temp voxelsmith.value = @s voxelsmith.ingotID
execute as @e[type=interaction,tag=voxelsmith.voxel,sort=nearest] if score @s voxelsmith.ingotID = #temp voxelsmith.value run tag @s add voxelsmith.current_ingot

execute store result score #item_count voxelsmith.value if entity @e[tag=voxelsmith.current_ingot]
scoreboard players operation #item_count voxelsmith.value /= #18 voxelsmith.value

execute store result entity @s data.material.count int 1 run scoreboard players get #item_count voxelsmith.value

function voxelsmith:voxel_shape/refund/refund with entity @s data

function voxelsmith:voxel_shape/kill