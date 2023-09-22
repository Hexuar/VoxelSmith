function kingsandcastles:smithing/ground_recipes/generic
summon item ~ ~ ~ {Item:{id:"minecraft:golden_sword",Count:1b}}

kill @e[type=item,nbt={Item:{tag:{kingsandcastles:{golden_crossguard:1b}}}},sort=nearest,limit=1,distance=..1]
kill @e[type=item,nbt={Item:{tag:{kingsandcastles:{golden_pommel:1b}}}},sort=nearest,limit=1,distance=..1]