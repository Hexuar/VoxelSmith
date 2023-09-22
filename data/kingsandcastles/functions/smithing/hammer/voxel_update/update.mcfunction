execute if entity @e[type=interaction,tag=kingsandcastles.metal_voxel,tag=!kingsandcastles.check_next_tick,sort=nearest,limit=1,distance=..0.03125] run function kingsandcastles:smithing/hammer/voxel_update/move_up

execute positioned ~ ~-0.0625 ~ unless entity @e[type=interaction,tag=kingsandcastles.metal_voxel,tag=!kingsandcastles.check_next_tick,sort=nearest,limit=1,distance=..0.03125] unless block ~ ~ ~ anvil run function kingsandcastles:smithing/hammer/voxel_update/move_down

# Store current shape data
scoreboard players operation #temp kingsandcastles.value = @s kingsandcastles.ingotID
execute as @e[type=item_display,tag=kingsandcastles.metal_shape,sort=nearest] if score @s kingsandcastles.ingotID = #temp kingsandcastles.value run tag @s add kingsandcastles.current_ingot

tag @e[type=item_display,tag=kingsandcastles.current_ingot] add kingsandcastles.store_data_next_tick
schedule function kingsandcastles:smithing/metal_shape/store_data_next_tick 1t

tag @e remove kingsandcastles.current_ingot


# remove tag
tag @s remove kingsandcastles.check_next_tick