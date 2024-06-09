tag @s add voxelsmith.this

scoreboard players set #voxel_in voxelsmith.value 0

execute align xyz as @e[type=interaction,tag=voxelsmith.voxel,tag=!voxelsmith.this,dx=0,dy=0,dz=0] if score @s voxelsmith.pos.x = @e[type=interaction,tag=voxelsmith.this,limit=1] voxelsmith.pos.x if score @s voxelsmith.pos.y = @e[type=interaction,tag=voxelsmith.this,limit=1] voxelsmith.pos.y if score @s voxelsmith.pos.z = @e[type=interaction,tag=voxelsmith.this,limit=1] voxelsmith.pos.z run scoreboard players set #voxel_in voxelsmith.value 1

execute if score #voxel_in voxelsmith.value matches 1 run scoreboard players add @s voxelsmith.pos.y 1
execute if score #voxel_in voxelsmith.value matches 1 run function voxelsmith:voxel/move_up

tag @s remove voxelsmith.this