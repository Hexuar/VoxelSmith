execute if score #voxel.z kingsandcastles.value >= #size.z kingsandcastles.value run return 0


    function kingsandcastles:smithing/metal_voxel/summon
    scoreboard players operation @e[type=interaction,tag=kingsandcastles.metal_voxel,sort=nearest,limit=1] kingsandcastles.ingotID = #current kingsandcastles.ingotID
    tp @s ^ ^ ^0.0625

    


scoreboard players add #voxel.z kingsandcastles.value 1
execute at @s run function kingsandcastles:smithing/metal_shape/summon/loop_z