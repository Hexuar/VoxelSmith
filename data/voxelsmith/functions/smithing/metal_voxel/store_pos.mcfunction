execute store result score @s voxelsmith.pos.x run data get entity @s Pos[0] 10000
execute store result score @s voxelsmith.pos.y run data get entity @s Pos[1] 10000
execute store result score @s voxelsmith.pos.z run data get entity @s Pos[2] 10000

scoreboard players operation @s voxelsmith.pos.x -= #origin.x voxelsmith.value
scoreboard players operation @s voxelsmith.pos.y -= #origin.y voxelsmith.value
scoreboard players operation @s voxelsmith.pos.z -= #origin.z voxelsmith.value

scoreboard players operation @s voxelsmith.pos.x /= #625 voxelsmith.value
scoreboard players operation @s voxelsmith.pos.y /= #625 voxelsmith.value
scoreboard players operation @s voxelsmith.pos.z /= #625 voxelsmith.value