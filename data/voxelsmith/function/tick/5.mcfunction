# Item heating
execute as @e[type=minecraft:item] at @s if block ~ ~-0.1 ~ #voxelsmith:heating if items entity @s container.* #voxelsmith:heatable run function voxelsmith:temperature/heat_item {max_temperature:1000, heating_rate:5}

# Item quenching
execute as @e[type=minecraft:item] at @s if block ~ ~ ~ #voxelsmith:quenching if data entity @s Item.components."minecraft:custom_data".voxelsmith.temperature run function voxelsmith:temperature/cool_item {cooling_rate:10}

# Ground recipes
function voxelsmith:ground_recipes/recipe_loop/init