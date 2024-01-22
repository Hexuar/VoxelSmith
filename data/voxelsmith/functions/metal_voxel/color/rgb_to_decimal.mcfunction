scoreboard players operation #color.r voxelsmith.value *= #65536 voxelsmith.value
scoreboard players operation #color.g voxelsmith.value *= #256 voxelsmith.value

scoreboard players operation #color voxelsmith.value = #color.r voxelsmith.value
scoreboard players operation #color voxelsmith.value += #color.g voxelsmith.value
scoreboard players operation #color voxelsmith.value += #color.b voxelsmith.value