execute if score #voxel.x kingsandcastles.value >= #size.x kingsandcastles.value run return 0

    

    function kingsandcastles:smithing/metal_shape/summon/loop_y
    scoreboard players set #voxel.y kingsandcastles.value 0

    tp @s ^0.0625 ^ ^


scoreboard players add #voxel.x kingsandcastles.value 1
execute at @s run function kingsandcastles:smithing/metal_shape/summon/loop_x