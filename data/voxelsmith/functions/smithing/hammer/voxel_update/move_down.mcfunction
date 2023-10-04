tp ~ ~ ~

scoreboard players remove @s voxelsmith.pos.y 1


execute positioned ~ ~-0.0625 ~ unless entity @e[type=interaction,tag=voxelsmith.metal_voxel,tag=!voxelsmith.check_next_tick,sort=nearest,limit=1,distance=..0.03125] unless block ~ ~ ~ anvil run function voxelsmith:smithing/hammer/voxel_update/move_down