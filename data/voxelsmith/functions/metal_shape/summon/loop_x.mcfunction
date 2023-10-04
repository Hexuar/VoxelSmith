execute if score #voxel.x voxelsmith.value >= #size.x voxelsmith.value run return 0

    

    function voxelsmith:metal_shape/summon/loop_y
    scoreboard players set #voxel.y voxelsmith.value 0

    tp @s ^0.0625 ^ ^


scoreboard players add #voxel.x voxelsmith.value 1
execute at @s run function voxelsmith:metal_shape/summon/loop_x