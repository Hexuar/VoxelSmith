tag @s add voxelsmith.this

scoreboard players set #voxel_below voxelsmith.value 0
scoreboard players operation #y_below voxelsmith.value = @s voxelsmith.pos.y
scoreboard players remove #y_below voxelsmith.value 1

execute align xyz as @e[type=interaction,tag=voxelsmith.metal_voxel,tag=!voxelsmith.this,dx=0,dy=0,dz=0] if score @s voxelsmith.pos.x = @e[type=interaction,tag=voxelsmith.this,limit=1] voxelsmith.pos.x if score @s voxelsmith.pos.y = #y_below voxelsmith.value if score @s voxelsmith.pos.z = @e[type=interaction,tag=voxelsmith.this,limit=1] voxelsmith.pos.z run scoreboard players set #voxel_below voxelsmith.value 1

execute if score @s voxelsmith.pos.y matches 1.. if score #voxel_below voxelsmith.value matches 0 run scoreboard players remove @s voxelsmith.pos.y 1
execute if score @s voxelsmith.pos.y matches 1.. if score #voxel_below voxelsmith.value matches 0 run function voxelsmith:metal_voxel/move_down

tag @s remove voxelsmith.this