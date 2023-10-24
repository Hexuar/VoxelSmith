summon interaction ~ ~ ~ {Tags:["voxelsmith.metal_voxel","voxelsmith.new"],width:0.0625f,height:0.0625f,Passengers:[{id:"minecraft:item_display",Tags:["voxelsmith.metal_voxel","voxelsmith.new"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.03125f,0f],scale:[0.0625f,0.0625f,0.0625f]},item:{id:"minecraft:command_block",Count:1b}}]}

#data modify entity @e[type=item_display,tag=voxelsmith.metal_voxel,tag=voxelsmith.new,sort=nearest,limit=1] item set from storage voxelsmith:data metal
execute store result score #color voxelsmith.value run random value 0..4
execute if score #color voxelsmith.value matches 0 run data modify entity @e[type=item_display,tag=voxelsmith.metal_voxel,tag=voxelsmith.new,sort=nearest,limit=1] item set value {id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:2221802}}
execute if score #color voxelsmith.value matches 1 run data modify entity @e[type=item_display,tag=voxelsmith.metal_voxel,tag=voxelsmith.new,sort=nearest,limit=1] item set value {id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:2221803}}
execute if score #color voxelsmith.value matches 2 run data modify entity @e[type=item_display,tag=voxelsmith.metal_voxel,tag=voxelsmith.new,sort=nearest,limit=1] item set value {id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:2221804}}
execute if score #color voxelsmith.value matches 3 run data modify entity @e[type=item_display,tag=voxelsmith.metal_voxel,tag=voxelsmith.new,sort=nearest,limit=1] item set value {id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:2221805}}
execute if score #color voxelsmith.value matches 4 run data modify entity @e[type=item_display,tag=voxelsmith.metal_voxel,tag=voxelsmith.new,sort=nearest,limit=1] item set value {id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:2221806}}

execute as @e[type=interaction,tag=voxelsmith.metal_voxel,tag=voxelsmith.new,sort=nearest,limit=1] run function voxelsmith:metal_voxel/store_pos

tag @e[tag=voxelsmith.new] remove voxelsmith.new