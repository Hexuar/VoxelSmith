execute if score #j voxelsmith.value > #items voxelsmith.value run function voxelsmith:ground_recipes/recipe_loop/item_loop/success with storage voxelsmith:data
execute if score #j voxelsmith.value > #items voxelsmith.value run return 1

execute store result storage voxelsmith:data j int 1 run scoreboard players get #j voxelsmith.value
function voxelsmith:ground_recipes/recipe_loop/item_loop/get_item with storage voxelsmith:data
execute store result score #success voxelsmith.value run function voxelsmith:ground_recipes/recipe_loop/item_loop/check_item with storage voxelsmith:data

execute if score #success voxelsmith.value matches 0 run return 0

scoreboard players add #j voxelsmith.value 1
function voxelsmith:ground_recipes/recipe_loop/item_loop/loop