$execute unless entity @s[nbt={Item:$(item)}] run return fail

$data modify storage voxelsmith:data material set value $(item)
$data modify storage voxelsmith:data colorPalette set value $(color_palette)
$scoreboard players set #requiresHeat voxelsmith.value $(requires_heat)

function voxelsmith:smithing/start/create_voxel_shape