execute store result score #passed voxelsmith.value run function voxelsmith:ground_recipes/generic/anvil
execute if score #passed voxelsmith.value matches 0 run return 0
loot spawn ~ ~ ~ loot voxelsmith:golden_hammer

kill @e[type=item,sort=nearest,limit=1,nbt={Item:{tag:{voxelsmith:{golden_hammer_head:1b}},Count:1b}}]