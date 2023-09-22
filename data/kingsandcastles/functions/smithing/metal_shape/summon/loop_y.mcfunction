execute if score #voxel.y kingsandcastles.value >= #size.y kingsandcastles.value run return 0

    function kingsandcastles:smithing/metal_shape/summon/loop_z
    scoreboard players set #voxel.z kingsandcastles.value 0

    tp @s ^ ^0.0625 ^


scoreboard players add #voxel.y kingsandcastles.value 1
execute at @s run function kingsandcastles:smithing/metal_shape/summon/loop_y