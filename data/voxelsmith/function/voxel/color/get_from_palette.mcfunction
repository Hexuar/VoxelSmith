# Get Base Color
$execute store result score #color voxelsmith.value run data get storage voxelsmith:data colorPalette[$(colorIndex)]

# Fix Color
scoreboard players remove #color voxelsmith.value 16777216
execute store result storage voxelsmith:data color int 1 run scoreboard players get #color voxelsmith.value