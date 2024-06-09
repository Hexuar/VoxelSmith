# Get Base Color
$execute store result score #color voxelsmith.value run data get storage voxelsmith:data colorPalette[$(colorIndex)]


# Get Temperature Color
execute store result storage voxelsmith:data temperature int 1 run scoreboard players get #temperature voxelsmith.value
function voxelsmith:voxel/color/from_temperature with storage voxelsmith:data

function voxelsmith:voxel/color/decimal_to_rgb

scoreboard players operation #color.r voxelsmith.value += #temp.r voxelsmith.value
scoreboard players operation #color.g voxelsmith.value += #temp.g voxelsmith.value
scoreboard players operation #color.b voxelsmith.value += #temp.b voxelsmith.value

execute if score #color.r voxelsmith.value matches 256.. run scoreboard players set #color.r voxelsmith.value 255
execute if score #color.g voxelsmith.value matches 256.. run scoreboard players set #color.g voxelsmith.value 255
execute if score #color.b voxelsmith.value matches 256.. run scoreboard players set #color.b voxelsmith.value 255

execute if score #color.r voxelsmith.value matches ..-1 run scoreboard players set #color.r voxelsmith.value 0
execute if score #color.g voxelsmith.value matches ..-1 run scoreboard players set #color.g voxelsmith.value 0
execute if score #color.b voxelsmith.value matches ..-1 run scoreboard players set #color.b voxelsmith.value 0

function voxelsmith:voxel/color/rgb_to_decimal


# Fix Color
scoreboard players remove #color voxelsmith.value 16777216
execute store result storage voxelsmith:data color int 1 run scoreboard players get #color voxelsmith.value