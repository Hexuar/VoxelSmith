$execute unless entity @s[nbt={Item:$(item)}] run return fail

$data modify storage voxelsmith:data material set value $(item)
$data modify storage voxelsmith:data colorPalette set value $(color_palette)
$scoreboard players set #requiresHeat voxelsmith.value $(type)

function voxelsmith:start_smithing/main