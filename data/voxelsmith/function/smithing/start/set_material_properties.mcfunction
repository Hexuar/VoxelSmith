$execute unless entity @s[nbt={Item:$(item)}] run return fail

$data modify storage voxelsmith:data material set value $(item)
$data modify storage voxelsmith:data colorPalette set value $(color_palette)
execute store result score #!requiresHeat voxelsmith.value run data get storage voxelsmith:data colorPalette
scoreboard players set #requiresHeat voxelsmith.value 0
execute if score #!requiresHeat voxelsmith.value matches 0 run scoreboard players set #requiresHeat voxelsmith.value 1

function voxelsmith:smithing/start/create_voxel_shape