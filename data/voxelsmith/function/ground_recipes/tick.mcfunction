# Heat Item
execute as @e[type=item] at @s if predicate voxelsmith:item/is_smithing_material if block ~ ~-0.1 ~ #voxelsmith:heat_sources unless block ~ ~ ~ #voxelsmith:water_blocks unless block ~ ~ ~ #voxelsmith:waterloggable[waterlogged=true] run function voxelsmith:ground_recipes/temperature/heat_item

execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{voxelsmith:{heatable_item:1b}}}}}] at @s if block ~ ~-0.1 ~ magma_block unless block ~ ~ ~ #voxelsmith:water_blocks unless block ~ ~ ~ #voxelsmith:waterloggable[waterlogged=true] run function voxelsmith:ground_recipes/temperature/heat_item


# Cool Item
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{voxelsmith:{has_temperature:1b}}}}}] at @s if block ~ ~ ~ #voxelsmith:water_blocks run function voxelsmith:ground_recipes/temperature/cool_item

execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{voxelsmith:{has_temperature:1b}}}}}] at @s if block ~ ~ ~ #voxelsmith:waterloggable[waterlogged=true] run function voxelsmith:ground_recipes/temperature/cool_item


# Recipes
function voxelsmith:ground_recipes/recipe_loop/init