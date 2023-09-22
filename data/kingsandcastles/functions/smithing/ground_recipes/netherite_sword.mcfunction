function kingsandcastles:smithing/ground_recipes/generic
summon item ~ ~ ~ {Item:{id:"minecraft:netherite_sword",Count:1b}}

kill @e[type=item,nbt={Item:{tag:{kingsandcastles:{netherite_crossguard:1b}}}},sort=nearest,limit=1,distance=..1]
kill @e[type=item,nbt={Item:{tag:{kingsandcastles:{netherite_pommel:1b}}}},sort=nearest,limit=1,distance=..1]