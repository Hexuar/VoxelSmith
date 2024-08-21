execute if score @s voxelsmith.pos.x > #max.x voxelsmith.value run scoreboard players operation #max.x voxelsmith.value = @s voxelsmith.pos.x
execute if score @s voxelsmith.pos.y > #max.y voxelsmith.value run scoreboard players operation #max.y voxelsmith.value = @s voxelsmith.pos.y
execute if score @s voxelsmith.pos.z > #max.z voxelsmith.value run scoreboard players operation #max.z voxelsmith.value = @s voxelsmith.pos.z

execute if score @s voxelsmith.pos.x < #min.x voxelsmith.value run scoreboard players operation #min.x voxelsmith.value = @s voxelsmith.pos.x
execute if score @s voxelsmith.pos.y < #min.y voxelsmith.value run scoreboard players operation #min.y voxelsmith.value = @s voxelsmith.pos.y
execute if score @s voxelsmith.pos.z < #min.z voxelsmith.value run scoreboard players operation #min.z voxelsmith.value = @s voxelsmith.pos.z