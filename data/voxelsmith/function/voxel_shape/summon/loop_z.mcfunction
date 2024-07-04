execute if score #voxel.z voxelsmith.value >= #size.z voxelsmith.value run return 0


    function voxelsmith:voxel/summon
    scoreboard players operation @e[type=interaction,tag=voxelsmith.voxel,sort=nearest,limit=1] voxelsmith.ingotID = #current voxelsmith.ingotID
    tp @s ^ ^ ^0.0625

    


scoreboard players add #voxel.z voxelsmith.value 1
execute at @s run function voxelsmith:voxel_shape/summon/loop_z