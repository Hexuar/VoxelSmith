# Smithing
execute as @e[type=minecraft:item] at @s if predicate voxelsmith:item/is_material if block ~ ~-0.1 ~ #voxelsmith:working_surface align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=marker,tag=voxelsmith.voxel_shape,distance=..0.5,sort=nearest,limit=1] run function voxelsmith:smithing/start

# Kill shapes
execute as @e[type=marker,tag=voxelsmith.voxel_shape,tag=!voxelsmith.knapping_shape] at @s unless block ~ ~-0.1 ~ #anvil run function voxelsmith:voxel_shape/refund/get
execute as @e[type=marker,tag=voxelsmith.knapping_shape] at @s unless block ~ ~-0.1 ~ #voxelsmith:knapping_surface run function voxelsmith:voxel_shape/refund/get

# Blueprints
execute as @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{voxelsmith:{"blueprint": true}}}}},tag=!voxelsmith.blueprint.used] at @s if block ~ ~-1 ~ #voxelsmith:working_surface align xyz if entity @e[type=minecraft:marker,tag=voxelsmith.voxel_shape,sort=nearest,limit=1,dx=0,dy=-1,dz=0] unless entity @e[type=minecraft:item_display,tag=voxelsmith.blueprint_voxel,sort=nearest,limit=1,dx=0,dy=-1,dz=0] run function voxelsmith:blueprint/summon_shape
execute as @e[type=minecraft:item_display,tag=voxelsmith.blueprint_voxel] at @s align xyz unless entity @e[type=marker,tag=voxelsmith.voxel_shape,sort=nearest,limit=1,dx=0,dy=-1,dz=0] run kill @s

# Item heating
execute as @e[type=minecraft:item] if predicate voxelsmith:item/is_smithing_material at @s if block ~ ~-0.1 ~ #voxelsmith:heating run function voxelsmith:temperature/heat_item {max_temperature:1000, heating_rate:5}

# Item quenching
execute as @e[type=minecraft:item] at @s if block ~ ~ ~ #voxelsmith:quenching if data entity @s Item.components."minecraft:custom_data".voxelsmith.temperature run function voxelsmith:temperature/cool_item {cooling_rate:20}

# Ground recipes
function voxelsmith:ground_recipes/recipe_loop/init