scoreboard players operation #temp voxelsmith.value = @s voxelsmith.ingotID
execute as @e[type=interaction,tag=voxelsmith.metal_voxel,sort=nearest] if score @s voxelsmith.ingotID = #temp voxelsmith.value run tag @s add voxelsmith.current_ingot

execute as @e[tag=voxelsmith.current_ingot] run function voxelsmith:metal_voxel/kill
kill @s

tag @e remove voxelsmith.current_ingot