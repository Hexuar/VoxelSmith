# Get Base Color
$execute store result score #color voxelsmith.value run data get storage voxelsmith:data colorPalette[$(colorIndex)]


# Get Temperature Color
execute store result storage voxelsmith:data temperature int 1 run scoreboard players get #temperature voxelsmith.value
execute store result score #tempColor voxelsmith.value run function voxelsmith:metal_voxel/color/from_temperature with storage voxelsmith:data
scoreboard players operation #color voxelsmith.value += #tempColor voxelsmith.value


# Fix Color
scoreboard players remove #color voxelsmith.value 16777216
execute if score #color voxelsmith.value matches 0.. run scoreboard players set #color voxelsmith.value -1
execute if score #color voxelsmith.value matches ..-16777216 run scoreboard players set #color voxelsmith.value -1
execute store result storage voxelsmith:data color int 1 run scoreboard players get #color voxelsmith.value