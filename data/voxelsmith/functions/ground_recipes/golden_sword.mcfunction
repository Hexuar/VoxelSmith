execute store result score #passed voxelsmith.value run function voxelsmith:ground_recipes/generic/anvil
execute if score #passed voxelsmith.value matches 0 run return 0
summon item ~ ~ ~ {Item:{id:"minecraft:golden_sword",Count:1b}}

kill @e[type=item,nbt={Item:{tag:{voxelsmith:{golden_blade:1b}},Count:1b}},sort=nearest,limit=1,distance=..1]
kill @e[type=item,nbt={Item:{tag:{voxelsmith:{golden_crossguard:1b}},Count:1b}},sort=nearest,limit=1,distance=..1]
kill @e[type=item,nbt={Item:{tag:{voxelsmith:{golden_pommel:1b}},Count:1b}},sort=nearest,limit=1,distance=..1]