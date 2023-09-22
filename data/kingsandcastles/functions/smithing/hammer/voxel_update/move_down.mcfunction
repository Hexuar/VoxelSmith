tp ~ ~ ~

scoreboard players remove @s kingsandcastles.pos.y 1


execute positioned ~ ~-0.0625 ~ unless entity @e[type=interaction,tag=kingsandcastles.metal_voxel,tag=!kingsandcastles.check_next_tick,sort=nearest,limit=1,distance=..0.03125] unless block ~ ~ ~ anvil run function kingsandcastles:smithing/hammer/voxel_update/move_down