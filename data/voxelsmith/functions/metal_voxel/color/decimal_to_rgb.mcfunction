scoreboard players operation #color.r voxelsmith.value = #color voxelsmith.value
scoreboard players operation #color.r voxelsmith.value /= #65536 voxelsmith.value

scoreboard players operation #color.g voxelsmith.value = #color voxelsmith.value
scoreboard players operation #color.g voxelsmith.value %= #65536 voxelsmith.value
scoreboard players operation #color.b voxelsmith.value = #color.g voxelsmith.value
scoreboard players operation #color.g voxelsmith.value /= #256 voxelsmith.value

scoreboard players operation #color.b voxelsmith.value %= #256 voxelsmith.value