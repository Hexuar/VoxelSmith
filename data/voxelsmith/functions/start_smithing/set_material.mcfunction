execute if predicate {"condition":"entity_properties","entity":"this","predicate":{"slots":{"contents":{"items":"#voxelsmith:smithing_material"}}}} unless block ~ ~-0.5 ~ #minecraft:anvil run return fail
execute if predicate {"condition":"entity_properties","entity":"this","predicate":{"slots":{"contents":{"items":"#voxelsmith:knapping_material"}}}} unless block ~ ~-0.5 ~ #voxelsmith:knapping_surface run return fail

execute as @s[nbt={Item:{id:"minecraft:cobblestone"}}] run function voxelsmith:start_smithing/set_material/stone
#execute as @s[nbt={Item:{id:"minecraft:diamond"}}] run function voxelsmith:start_smithing/set_material/diamond
execute as @s[nbt={Item:{id:"minecraft:copper_ingot"}}] run function voxelsmith:start_smithing/set_material/copper_ingot
execute as @s[nbt={Item:{id:"minecraft:gold_ingot"}}] run function voxelsmith:start_smithing/set_material/gold_ingot
execute as @s[nbt={Item:{id:"minecraft:iron_ingot"}}] run function voxelsmith:start_smithing/set_material/iron_ingot
execute as @s[nbt={Item:{id:"minecraft:netherite_ingot"}}] run function voxelsmith:start_smithing/set_material/netherite_ingot