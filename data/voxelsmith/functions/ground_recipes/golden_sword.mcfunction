execute if entity @e[sort=nearest,limit=1,nbt={Item:{tag:{voxelsmith:{too_hot:1b}}}}] run function voxelsmith:ground_recipes/failed
execute if entity @e[sort=nearest,limit=1,nbt={Item:{tag:{voxelsmith:{too_hot:1b}}}}] run return 0
function voxelsmith:ground_recipes/generic/anvil
summon item ~ ~ ~ {Item:{id:"minecraft:golden_sword",Count:1b}}

kill @e[type=item,nbt={Item:{tag:{voxelsmith:{golden_crossguard:1b}}}},sort=nearest,limit=1,distance=..1]
kill @e[type=item,nbt={Item:{tag:{voxelsmith:{golden_pommel:1b}}}},sort=nearest,limit=1,distance=..1]