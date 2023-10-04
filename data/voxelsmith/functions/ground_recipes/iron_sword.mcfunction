function voxelsmith:ground_recipes/generic
summon item ~ ~ ~ {Item:{id:"minecraft:iron_sword",Count:1b}}

kill @e[type=item,nbt={Item:{tag:{voxelsmith:{iron_crossguard:1b}}}},sort=nearest,limit=1,distance=..1]
kill @e[type=item,nbt={Item:{tag:{voxelsmith:{iron_pommel:1b}}}},sort=nearest,limit=1,distance=..1]