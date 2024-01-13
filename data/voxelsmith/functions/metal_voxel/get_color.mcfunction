$execute store result score #color voxelsmith.value run data get storage voxelsmith:data colorPalette[$(colorIndex)]
scoreboard players operation #color voxelsmith.value += #temperature voxelsmith.value
scoreboard players remove #color voxelsmith.value 16777216
execute if score #color voxelsmith.value matches 0.. run scoreboard players set #color voxelsmith.value -1
execute store result storage voxelsmith:data color int 1 run scoreboard players get #color voxelsmith.value