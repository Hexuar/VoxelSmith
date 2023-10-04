scoreboard players operation #temp voxelsmith.value = @s voxelsmith.ingotID
execute as @e[type=#voxelsmith:metal_shape_entities] if score @s voxelsmith.ingotID = #temp voxelsmith.value run tag @s add voxelsmith.current_ingot


execute on passengers run kill @s
kill @s

scoreboard players set #voxel_count voxelsmith.value 0
execute as @e[type=interaction,tag=voxelsmith.current_ingot] run scoreboard players add #voxel_count voxelsmith.value 1

execute if score #voxel_count voxelsmith.value matches 0 run kill @e[type=item_display,tag=voxelsmith.current_ingot,tag=voxelsmith.metal_shape,sort=nearest]
execute as @e[type=item_display,tag=voxelsmith.current_ingot,tag=voxelsmith.metal_shape] run function voxelsmith:metal_shape/store_data

tag @e remove voxelsmith.current_ingot

