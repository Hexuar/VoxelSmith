execute as @e[type=item_display,tag=kingsandcastles.store_data_next_tick] run scoreboard players operation #temp kingsandcastles.value = @s kingsandcastles.ingotID
execute as @e[type=interaction,tag=kingsandcastles.metal_voxel,sort=nearest] if score @s kingsandcastles.ingotID = #temp kingsandcastles.value run tag @s add kingsandcastles.current_ingot

execute as @e[type=item_display,tag=kingsandcastles.store_data_next_tick] at @s run function kingsandcastles:smithing/metal_shape/store_data
execute as @e[type=item_display,tag=kingsandcastles.store_data_next_tick] at @s run function kingsandcastles:smithing/metal_shape/kill_far_voxels

tag @e remove kingsandcastles.current_ingot
tag @e remove kingsandcastles.store_data_next_tick