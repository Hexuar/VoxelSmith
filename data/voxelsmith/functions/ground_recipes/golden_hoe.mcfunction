execute store result score #passed voxelsmith.value run function voxelsmith:ground_recipes/generic/anvil
execute if score #passed voxelsmith.value matches 0 run return 0
summon item ~ ~ ~ {Item:{id:"minecraft:golden_hoe",Count:1b}}

kill @e[type=item,sort=nearest,limit=1,nbt={Item:{tag:{voxelsmith:{golden_hoe_head:1b}},Count:1b}}]