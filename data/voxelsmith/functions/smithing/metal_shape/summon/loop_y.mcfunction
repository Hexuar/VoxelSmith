execute if score #voxel.y voxelsmith.value >= #size.y voxelsmith.value run return 0

    function voxelsmith:smithing/metal_shape/summon/loop_z
    scoreboard players set #voxel.z voxelsmith.value 0

    tp @s ^ ^0.0625 ^


scoreboard players add #voxel.y voxelsmith.value 1
execute at @s run function voxelsmith:smithing/metal_shape/summon/loop_y