data remove entity @s attack

execute if score #current_hammer_mode kingsandcastles.hammer_mode matches 0 run function kingsandcastles:smithing/hammer/dir/forwards
execute if score #current_hammer_mode kingsandcastles.hammer_mode matches 1 run function kingsandcastles:smithing/hammer/dir/right
execute if score #current_hammer_mode kingsandcastles.hammer_mode matches 2 run function kingsandcastles:smithing/hammer/dir/back
execute if score #current_hammer_mode kingsandcastles.hammer_mode matches 3 run function kingsandcastles:smithing/hammer/dir/left
execute if score #current_hammer_mode kingsandcastles.hammer_mode matches 4 run function kingsandcastles:smithing/metal_voxel/kill

tag @s add kingsandcastles.this


# Update position (if floating or in another voxel)
tag @s add kingsandcastles.check_next_tick
schedule function kingsandcastles:smithing/hammer/voxel_update/check 2t
#schedule function kingsandcastles:smithing/hammer/voxel_update/kill 1t