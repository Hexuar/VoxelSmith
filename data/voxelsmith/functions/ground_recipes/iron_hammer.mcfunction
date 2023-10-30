execute if entity @e[sort=nearest,limit=1,nbt={Item:{tag:{voxelsmith:{too_hot:1b}}}}] run function voxelsmith:ground_recipes/failed
execute if entity @e[sort=nearest,limit=1,nbt={Item:{tag:{voxelsmith:{too_hot:1b}}}}] run return 0
function voxelsmith:ground_recipes/generic
loot spawn ~ ~ ~ loot voxelsmith:iron_hammer