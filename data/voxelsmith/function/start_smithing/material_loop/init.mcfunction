execute if predicate voxelsmith:item/is_smithing_material unless block ~ ~-0.5 ~ #minecraft:anvil run return fail
execute if predicate voxelsmith:item/is_knapping_material unless block ~ ~-0.5 ~ #voxelsmith:knapping_surface run return fail

execute store result score #length voxelsmith.value run data get storage voxelsmith:smithing materials
scoreboard players set #index voxelsmith.value 0

function voxelsmith:start_smithing/material_loop/loop