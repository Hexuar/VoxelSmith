# Achievement
advancement grant @p[distance=..4] only voxelsmith:tutorial/start_smithing

# Set Size
function voxelsmith:metal_shape/set_size

# Get Origin
execute align xyz summon marker run function voxelsmith:metal_shape/get_origin

# Summon Base Entity
summon marker ~ ~ ~ {Tags:["voxelsmith.entity","voxelsmith.metal_shape"]}
data modify entity @e[type=marker,tag=voxelsmith.metal_shape,sort=nearest,limit=1] data.metal set from storage voxelsmith:data metal
execute store result entity @e[type=marker,tag=voxelsmith.metal_shape,sort=nearest,limit=1] data.temperature int 1 run scoreboard players get #temperature voxelsmith.value
tp @e[type=marker,tag=voxelsmith.metal_shape,sort=nearest,limit=1] ~ ~ ~ ~ ~

# ID
scoreboard players add #current voxelsmith.ingotID 1
scoreboard players operation @e[type=marker,tag=voxelsmith.metal_shape,sort=nearest,limit=1] voxelsmith.ingotID = #current voxelsmith.ingotID

# Light
setblock ~ ~ ~ light[level=7]

# Summon Voxels
scoreboard players set #voxel.x voxelsmith.value 0
scoreboard players set #voxel.y voxelsmith.value 0
scoreboard players set #voxel.z voxelsmith.value 0
execute as @e[type=marker,tag=voxelsmith.metal_shape,sort=nearest,limit=1] at @s run function voxelsmith:metal_shape/summon/loop_x

# Fix Rotation
tp @e[type=marker,tag=voxelsmith.metal_shape,sort=nearest,limit=1] ~ ~ ~ ~ ~