# Item heating
execute as @e[type=minecraft:item] at @s if block ~ ~-0.1 ~ #voxelsmith:heating if items entity @s container.* #voxelsmith:heatable run function voxelsmith:temperature/heat_item {max_temperature:1000, heating_rate:5}

# Item quenching
execute as @e[type=minecraft:item] at @s if block ~ ~ ~ #voxelsmith:quenching if data entity @s Item.components."minecraft:custom_data".voxelsmith.temperature run function voxelsmith:temperature/cool_item {cooling_rate:10}

# Ground recipes
function voxelsmith:ground_recipes/recipe_loop/init

# Blueprints
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{voxelsmith:{"blueprint": true}}}}},tag=!voxelsmith.blueprint.used] at @s if block ~ ~-1 ~ #voxelsmith:working_surface align xyz if entity @e[type=marker,tag=voxelsmith.voxel_shape,sort=nearest,limit=1,dx=0,dy=-1,dz=0] unless entity @e[type=item_display,tag=voxelsmith.blueprint_voxel,sort=nearest,limit=1,dx=0,dy=-1,dz=0] run function voxelsmith:blueprint/summon_shape

execute as @e[type=item_display,tag=voxelsmith.blueprint_voxel] at @s align xyz unless entity @e[type=marker,tag=voxelsmith.voxel_shape,sort=nearest,limit=1,dx=0,dy=-1,dz=0] run kill @s