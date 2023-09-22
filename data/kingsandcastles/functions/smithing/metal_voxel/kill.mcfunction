scoreboard players operation #temp kingsandcastles.value = @s kingsandcastles.ingotID
execute as @e[type=#kingsandcastles:metal_shape_entities] if score @s kingsandcastles.ingotID = #temp kingsandcastles.value run tag @s add kingsandcastles.current_ingot


execute on passengers run kill @s
kill @s

scoreboard players set #voxel_count kingsandcastles.value 0
execute as @e[type=interaction,tag=kingsandcastles.current_ingot] run scoreboard players add #voxel_count kingsandcastles.value 1

execute if score #voxel_count kingsandcastles.value matches 0 run kill @e[type=item_display,tag=kingsandcastles.current_ingot,tag=kingsandcastles.metal_shape,sort=nearest]
execute as @e[type=item_display,tag=kingsandcastles.current_ingot,tag=kingsandcastles.metal_shape] run function kingsandcastles:smithing/metal_shape/store_data

tag @e remove kingsandcastles.current_ingot

