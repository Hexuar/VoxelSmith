execute store result score #items voxelsmith.value run data get storage voxelsmith:data recipe.ingredients
scoreboard players set #j voxelsmith.value 1

$execute as @e[type=item,nbt={Item:$(item)}] at @s if block ~ ~-0.1 ~ $(block) store result score #success voxelsmith.value run function voxelsmith:ground_recipes/recipe_loop/item_loop/loop

tag @e remove voxelsmith.current