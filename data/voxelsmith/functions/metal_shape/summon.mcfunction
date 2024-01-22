scoreboard players set #voxel.x voxelsmith.value 0
scoreboard players set #voxel.y voxelsmith.value 0
scoreboard players set #voxel.z voxelsmith.value 0

advancement grant @p[distance=..4] only voxelsmith:tutorial/start_smithing

function voxelsmith:metal_shape/set_size

execute align xyz summon marker run function voxelsmith:metal_shape/get_origin

summon marker ~ ~ ~ {Tags:["voxelsmith.metal_shape"]}
data modify entity @e[type=marker,tag=voxelsmith.metal_shape,sort=nearest,limit=1] data.metal set from storage voxelsmith:data metal
execute store result entity @e[type=marker,tag=voxelsmith.metal_shape,sort=nearest,limit=1] data.temperature int 1 run scoreboard players get #temperature voxelsmith.value
tp @e[type=marker,tag=voxelsmith.metal_shape,sort=nearest,limit=1] ~ ~ ~ ~ ~


scoreboard players add #current voxelsmith.ingotID 1
scoreboard players operation @e[type=marker,tag=voxelsmith.metal_shape,sort=nearest,limit=1] voxelsmith.ingotID = #current voxelsmith.ingotID


execute as @e[type=marker,tag=voxelsmith.metal_shape,sort=nearest,limit=1] at @s run function voxelsmith:metal_shape/summon/loop_x


tp @e[type=marker,tag=voxelsmith.metal_shape,sort=nearest,limit=1] ~ ~ ~ ~ ~