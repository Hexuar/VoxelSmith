scoreboard players operation #temp kingsandcastles.value = @s kingsandcastles.ingotID
execute as @e[type=interaction,tag=kingsandcastles.metal_voxel,sort=nearest] if score @s kingsandcastles.ingotID = #temp kingsandcastles.value run tag @s add kingsandcastles.current_ingot

execute as @e[tag=kingsandcastles.current_ingot] run tag @s add kingsandcastles.kill_next_tick
schedule function kingsandcastles:smithing/hammer/voxel_update/kill 5t
kill @s

tag @e remove kingsandcastles.current_ingot