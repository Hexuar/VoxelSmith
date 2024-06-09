execute store success score #recipe_type voxelsmith.value run data get storage voxelsmith:data recipe.output.id
execute if score #recipe_type voxelsmith.value matches 0 run function voxelsmith:ground_recipes/recipe_loop/item_loop/spawn_loot/loot with storage voxelsmith:data recipe
execute if score #recipe_type voxelsmith.value matches 1 run function voxelsmith:ground_recipes/recipe_loop/item_loop/spawn_loot/summon with storage voxelsmith:data recipe

execute if block ~ ~-1 ~ #minecraft:anvil run advancement grant @p[distance=..4] only voxelsmith:tutorial/craft_item
$playsound $(sound) block @a ~ ~ ~


kill @e[tag=voxelsmith.current]
kill @s