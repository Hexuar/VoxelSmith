execute if score #i voxelsmith.value > #length voxelsmith.value run return 1

execute store result storage voxelsmith:data i int 1 run scoreboard players get #i voxelsmith.value
function voxelsmith:ground_recipes/recipe_loop/get_recipe with storage voxelsmith:data

data modify storage voxelsmith:data item set from storage voxelsmith:data recipe.ingredients[0]
data modify storage voxelsmith:data block set from storage voxelsmith:data recipe.block
data modify storage voxelsmith:data sound set from storage voxelsmith:data recipe.sound
function voxelsmith:ground_recipes/recipe_loop/item_loop/init with storage voxelsmith:data


scoreboard players add #i voxelsmith.value 1
function voxelsmith:ground_recipes/recipe_loop/loop