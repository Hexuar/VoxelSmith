scoreboard players set #voxel.x kingsandcastles.value 0
scoreboard players set #voxel.y kingsandcastles.value 0
scoreboard players set #voxel.z kingsandcastles.value 0

function kingsandcastles:smithing/metal_shape/set_size


execute align xyz summon marker run function kingsandcastles:smithing/metal_shape/get_origin

summon item_display ~ ~ ~ {Tags:["kingsandcastles.metal_shape"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}
data modify entity @e[type=item_display,tag=kingsandcastles.metal_shape,sort=nearest,limit=1] item set from storage kingsandcastles:smithing/data metal
tp @e[type=item_display,tag=kingsandcastles.metal_shape,sort=nearest,limit=1] ~ ~ ~ ~ ~


scoreboard players add #current kingsandcastles.ingotID 1
scoreboard players operation @e[type=item_display,tag=kingsandcastles.metal_shape,sort=nearest,limit=1] kingsandcastles.ingotID = #current kingsandcastles.ingotID


execute as @e[type=item_display,tag=kingsandcastles.metal_shape,sort=nearest,limit=1] at @s run function kingsandcastles:smithing/metal_shape/summon/loop_x


tp @e[type=item_display,tag=kingsandcastles.metal_shape,sort=nearest,limit=1] ~ ~ ~ ~ ~