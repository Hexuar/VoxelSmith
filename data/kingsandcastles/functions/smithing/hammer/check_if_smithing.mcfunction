execute if entity @e[type=interaction,tag=kingsandcastles.metal_voxel,sort=nearest,distance=..0.0625] run function kingsandcastles:smithing/hammer/gui

execute unless entity @e[type=interaction,tag=kingsandcastles.metal_voxel,distance=..0.0625] unless entity @s[distance=4..] positioned ^ ^ ^0.1 run function kingsandcastles:smithing/hammer/check_if_smithing