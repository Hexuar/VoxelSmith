scoreboard players set #tick5 voxelsmith.value 0

# Summon smithing ingot
execute as @e[type=item] if predicate voxelsmith:item/is_ingot if predicate voxelsmith:item/is_not_foreign at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=marker,tag=voxelsmith.voxel_shape,distance=..0.5,sort=nearest,limit=1] if block ~ ~-1 ~ #anvil run function voxelsmith:start_smithing/vanilla
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{voxelsmith:{smithing_ingot:1b}}}}}] at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=marker,tag=voxelsmith.voxel_shape,distance=..0.5,sort=nearest,limit=1] if block ~ ~-1 ~ #anvil run function voxelsmith:start_smithing/main

execute as @e[type=item] if predicate voxelsmith:item/is_knappable if predicate voxelsmith:item/is_not_foreign at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=marker,tag=voxelsmith.voxel_shape,distance=..0.5,sort=nearest,limit=1] if block ~ ~-1 ~ #voxelsmith:knapping_surface run function voxelsmith:start_smithing/vanilla


# Blueprints
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{voxelsmith:{"blueprint": true}}}}},tag=!voxelsmith.blueprint.used] at @s if block ~ ~-1 ~ #voxelsmith:working_surface align xyz if entity @e[type=marker,tag=voxelsmith.voxel_shape,sort=nearest,limit=1,dx=0,dy=-1,dz=0] unless entity @e[type=item_display,tag=voxelsmith.blueprint_voxel,sort=nearest,limit=1,dx=0,dy=-1,dz=0] run function voxelsmith:blueprints/summon_shape

# Kill blueprints
execute as @e[type=item_display,tag=voxelsmith.blueprint_voxel] at @s align xyz unless entity @e[type=marker,tag=voxelsmith.voxel_shape,sort=nearest,limit=1,dx=0,dy=-1,dz=0] run kill @s

# Ground Recipes
function voxelsmith:ground_recipes/tick