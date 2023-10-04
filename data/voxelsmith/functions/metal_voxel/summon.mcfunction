summon interaction ~ ~ ~ {Tags:["voxelsmith.metal_voxel","voxelsmith.new"],width:0.0625f,height:0.0625f,Passengers:[{id:"minecraft:item_display",Tags:["voxelsmith.metal_voxel","voxelsmith.new"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.03125f,0f],scale:[0.0625f,0.0625f,0.0625f]},item:{id:"minecraft:command_block",Count:1b}}]}

data modify entity @e[type=item_display,tag=voxelsmith.metal_voxel,tag=voxelsmith.new,sort=nearest,limit=1] item set from storage voxelsmith:data metal

execute as @e[type=interaction,tag=voxelsmith.metal_voxel,tag=voxelsmith.new,sort=nearest,limit=1] run function voxelsmith:metal_voxel/store_pos

tag @e[tag=voxelsmith.new] remove voxelsmith.new