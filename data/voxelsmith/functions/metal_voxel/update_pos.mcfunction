scoreboard players operation #pos.x voxelsmith.value = @s voxelsmith.pos.x
scoreboard players operation #pos.y voxelsmith.value = @s voxelsmith.pos.y
scoreboard players operation #pos.z voxelsmith.value = @s voxelsmith.pos.z

scoreboard players operation #pos.x voxelsmith.value *= #100000 voxelsmith.value
scoreboard players operation #pos.y voxelsmith.value *= #100000 voxelsmith.value
scoreboard players operation #pos.z voxelsmith.value *= #100000 voxelsmith.value

scoreboard players operation #pos.x voxelsmith.value /= #16 voxelsmith.value
scoreboard players operation #pos.y voxelsmith.value /= #16 voxelsmith.value
scoreboard players operation #pos.z voxelsmith.value /= #16 voxelsmith.value

scoreboard players add #pos.x voxelsmith.value 003125
scoreboard players add #pos.z voxelsmith.value 003125


data modify storage voxelsmith:data temp set value {}
execute store result storage voxelsmith:data temp.x float 0.00001 run scoreboard players get #pos.x voxelsmith.value
execute store result storage voxelsmith:data temp.y float 0.00001 run scoreboard players get #pos.y voxelsmith.value
execute store result storage voxelsmith:data temp.z float 0.00001 run scoreboard players get #pos.z voxelsmith.value

function voxelsmith:metal_voxel/set_pos with storage voxelsmith:data temp