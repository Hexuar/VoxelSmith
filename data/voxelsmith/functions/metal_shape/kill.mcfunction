scoreboard players operation #temp voxelsmith.value = @s voxelsmith.ingotID
execute as @e[type=interaction,tag=voxelsmith.metal_voxel,sort=nearest] if score @s voxelsmith.ingotID = #temp voxelsmith.value run tag @s add voxelsmith.current_ingot

execute as @e[tag=voxelsmith.current_ingot] run tag @s add voxelsmith.kill_next_tick
schedule function voxelsmith:hammer/voxel_update/kill 5t
kill @s

tag @e remove voxelsmith.current_ingot