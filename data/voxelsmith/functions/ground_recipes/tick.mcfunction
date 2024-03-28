# Hot Items
execute as @e[type=item] if predicate voxelsmith:item/is_ingot if predicate voxelsmith:item/is_not_foreign at @s if block ~ ~-1 ~ magma_block run function voxelsmith:ground_recipes/temperature/heat_item
execute as @e[type=item,nbt={Item:{tag:{voxelsmith:{crafting_item:1b}}}}] at @s if block ~ ~-1 ~ magma_block run function voxelsmith:ground_recipes/temperature/heat_item
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{voxelsmith:{has_temperature:1b}}}}}] at @s if block ~ ~ ~ #voxelsmith:water_blocks run function voxelsmith:ground_recipes/temperature/cool_item
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{voxelsmith:{has_temperature:1b}}}}}] at @s if block ~ ~ ~ #voxelsmith:waterloggable[waterlogged=true] run function voxelsmith:ground_recipes/temperature/cool_item

# Recipes
function voxelsmith:ground_recipes/recipe_loop/init