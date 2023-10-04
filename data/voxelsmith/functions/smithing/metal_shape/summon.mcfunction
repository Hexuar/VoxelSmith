scoreboard players set #voxel.x voxelsmith.value 0
scoreboard players set #voxel.y voxelsmith.value 0
scoreboard players set #voxel.z voxelsmith.value 0

function voxelsmith:smithing/metal_shape/set_size


execute align xyz summon marker run function voxelsmith:smithing/metal_shape/get_origin

summon item_display ~ ~ ~ {Tags:["voxelsmith.metal_shape"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}
data modify entity @e[type=item_display,tag=voxelsmith.metal_shape,sort=nearest,limit=1] item set from storage voxelsmith:smithing/data metal
tp @e[type=item_display,tag=voxelsmith.metal_shape,sort=nearest,limit=1] ~ ~ ~ ~ ~


scoreboard players add #current voxelsmith.ingotID 1
scoreboard players operation @e[type=item_display,tag=voxelsmith.metal_shape,sort=nearest,limit=1] voxelsmith.ingotID = #current voxelsmith.ingotID


execute as @e[type=item_display,tag=voxelsmith.metal_shape,sort=nearest,limit=1] at @s run function voxelsmith:smithing/metal_shape/summon/loop_x


tp @e[type=item_display,tag=voxelsmith.metal_shape,sort=nearest,limit=1] ~ ~ ~ ~ ~