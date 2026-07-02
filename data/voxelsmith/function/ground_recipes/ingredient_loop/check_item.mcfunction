$execute unless entity @n[type=item,nbt={Item:$(item)},distance=..1] run return 0

$execute store result score #temperature voxelsmith.value run data get entity @n[type=item,nbt={Item:$(item)},distance=..1] Item.components.minecraft:custom_data.voxelsmith.temperature.value

execute if score #temperature voxelsmith.value > #MAX_GROUND_CRAFTING_TEMPERATURE voxelsmith.value run function voxelsmith:ground_recipes/fail
execute if score #temperature voxelsmith.value > #MAX_GROUND_CRAFTING_TEMPERATURE voxelsmith.value run return 0

$tag @n[type=item,nbt={Item:$(item)},distance=..1] add voxelsmith.current
return 1