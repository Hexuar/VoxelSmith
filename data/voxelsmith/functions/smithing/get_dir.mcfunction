execute store result score #rot voxelsmith.value run data get entity @s Rotation[0]

execute if score #rot voxelsmith.value matches 45..135 run scoreboard players set #dir voxelsmith.value 1
execute if score #rot voxelsmith.value matches 135..180 run scoreboard players set #dir voxelsmith.value 2
execute if score #rot voxelsmith.value matches -180..-135 run scoreboard players set #dir voxelsmith.value 2
execute if score #rot voxelsmith.value matches -135..-45 run scoreboard players set #dir voxelsmith.value 3
execute if score #rot voxelsmith.value matches -45..0 run scoreboard players set #dir voxelsmith.value 0
execute if score #rot voxelsmith.value matches 0..45 run scoreboard players set #dir voxelsmith.value 0