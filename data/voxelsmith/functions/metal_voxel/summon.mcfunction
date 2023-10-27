summon interaction ~ ~ ~ {Tags:["voxelsmith.metal_voxel","voxelsmith.new"],width:0.0625f,height:0.0625f,Passengers:[{id:"minecraft:item_display",Tags:["voxelsmith.metal_voxel","voxelsmith.new"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.03125f,0f],scale:[0.0625f,0.0625f,0.0625f]},item:{id:"minecraft:command_block",Count:1b}}]}


execute store result score #VoxelCustomModelData voxelsmith.value run data get storage voxelsmith:data metal_voxel.tag.CustomModelData
execute store result score #variation voxelsmith.value run random value 0..3
scoreboard players operation #variation voxelsmith.value *= #2000 voxelsmith.value
scoreboard players operation #VoxelCustomModelData voxelsmith.value += #variation voxelsmith.value

data modify entity @e[type=item_display,tag=voxelsmith.metal_voxel,tag=voxelsmith.new,sort=nearest,limit=1] item set from storage voxelsmith:data metal_voxel
execute store result entity @e[type=item_display,tag=voxelsmith.metal_voxel,tag=voxelsmith.new,sort=nearest,limit=1] item.tag.CustomModelData int 1 run scoreboard players get #VoxelCustomModelData voxelsmith.value

execute as @e[type=interaction,tag=voxelsmith.metal_voxel,tag=voxelsmith.new,sort=nearest,limit=1] run function voxelsmith:metal_voxel/store_pos

tag @e[tag=voxelsmith.new] remove voxelsmith.new