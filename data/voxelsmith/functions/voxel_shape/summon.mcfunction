# Achievement
execute if block ~ ~-0.1 ~ #minecraft:anvil run advancement grant @p[distance=..4] only voxelsmith:tutorial/smithing
execute if block ~ ~-0.1 ~ #voxelsmith:knapping_surface run advancement grant @p[distance=..4] only voxelsmith:tutorial/knapping



# Set Size
function voxelsmith:voxel_shape/set_size

# Get Origin
execute align xyz summon marker run function voxelsmith:voxel_shape/get_origin

# Light
execute if score #requiresHeat voxelsmith.value matches 1 run setblock ~ ~ ~ light[level=7]



# Set rotation
tp @s ~ ~ ~ ~ ~

# ID
scoreboard players add #current voxelsmith.ingotID 1
scoreboard players operation @s voxelsmith.ingotID = #current voxelsmith.ingotID

# Set Tags
tag @s add voxelsmith.entity
tag @s add voxelsmith.voxel_shape
execute if score #requiresHeat voxelsmith.value matches 0 run tag @s add voxelsmith.knapping_shape

# Set Data
data modify entity @s data.material set from storage voxelsmith:data material
execute store result entity @s data.temperature int 1 run scoreboard players get #temperature voxelsmith.value

execute if entity @s[tag=!voxelsmith.knapping_shape] run data modify entity @s data.surface set value "anvil"
execute if entity @s[tag=voxelsmith.knapping_shape] run data modify entity @s data.surface set value "stone"



# Summon Voxels
scoreboard players set #voxel.x voxelsmith.value 0
scoreboard players set #voxel.y voxelsmith.value 0
scoreboard players set #voxel.z voxelsmith.value 0
execute as @s at @s run function voxelsmith:voxel_shape/summon/loop_x