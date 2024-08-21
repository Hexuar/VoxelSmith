scoreboard players set #tick5 voxelsmith.value 0

# Check dropped material
execute at @a as @e[type=item,distance=..16] at @s if predicate voxelsmith:item/is_material if block ~ ~-0.1 ~ #voxelsmith:working_surface align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=marker,tag=voxelsmith.voxel_shape,distance=..0.5,sort=nearest,limit=1] run function voxelsmith:start_smithing/material_loop/init

# Blueprints
execute at @a as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{voxelsmith:{"blueprint": true}}}}},tag=!voxelsmith.blueprint.used,distance=..16] at @s if block ~ ~-1 ~ #voxelsmith:working_surface align xyz if entity @e[type=marker,tag=voxelsmith.voxel_shape,sort=nearest,limit=1,dx=0,dy=-1,dz=0] unless entity @e[type=item_display,tag=voxelsmith.blueprint_voxel,sort=nearest,limit=1,dx=0,dy=-1,dz=0] run function voxelsmith:blueprints/summon_shape

# Kill blueprints
execute at @a as @e[type=item_display,tag=voxelsmith.blueprint_voxel,distance=..16] at @s align xyz unless entity @e[type=marker,tag=voxelsmith.voxel_shape,sort=nearest,limit=1,dx=0,dy=-1,dz=0] run kill @s

# Ground Recipes
execute at @a run function voxelsmith:ground_recipes/tick