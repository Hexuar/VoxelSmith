scoreboard players operation #current.x kingsandcastles.value = #voxel.x kingsandcastles.value
scoreboard players operation #current.y kingsandcastles.value = #voxel.y kingsandcastles.value
scoreboard players operation #current.z kingsandcastles.value = #voxel.z kingsandcastles.value

scoreboard players operation #current.x kingsandcastles.value -= #min.x kingsandcastles.value
scoreboard players operation #current.y kingsandcastles.value -= #min.y kingsandcastles.value
scoreboard players operation #current.z kingsandcastles.value -= #min.z kingsandcastles.value

execute store result storage kingsandcastles:smithing/data temp.x int 1 run scoreboard players get #current.x kingsandcastles.value
execute store result storage kingsandcastles:smithing/data temp.y int 1 run scoreboard players get #current.y kingsandcastles.value
execute store result storage kingsandcastles:smithing/data temp.z int 1 run scoreboard players get #current.z kingsandcastles.value

data modify storage kingsandcastles:smithing/data shape append from storage kingsandcastles:smithing/data temp