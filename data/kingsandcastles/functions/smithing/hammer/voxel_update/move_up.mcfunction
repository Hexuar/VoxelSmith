tp ~ ~0.0625 ~
scoreboard players add @s kingsandcastles.pos.y 1

execute positioned ~ ~0.0625 ~ if entity @e[type=interaction,tag=kingsandcastles.metal_voxel,tag=!kingsandcastles.check_next_tick,sort=nearest,limit=1,distance=..0.03125] unless block ~ ~ ~ anvil run function kingsandcastles:smithing/hammer/voxel_update/move_up