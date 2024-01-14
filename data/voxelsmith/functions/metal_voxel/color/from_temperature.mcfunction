$scoreboard players set #t voxelsmith.value $(temperature)

execute if score #t voxelsmith.value matches 1200.. run return 0

scoreboard players operation #t^2 voxelsmith.value = #t voxelsmith.value
scoreboard players operation #t^2 voxelsmith.value *= #t voxelsmith.value

scoreboard players operation #t^3 voxelsmith.value = #t^2 voxelsmith.value
scoreboard players operation #t^3 voxelsmith.value *= #t voxelsmith.value


# Red
scoreboard players set #red voxelsmith.value 0


# Green
scoreboard players operation #green_3 voxelsmith.value = #t^3 voxelsmith.value
scoreboard players set #green_3_factor voxelsmith.value 2500000
scoreboard players operation #green_3 voxelsmith.value /= #green_3_factor voxelsmith.value 

scoreboard players operation #green_2 voxelsmith.value = #t^2 voxelsmith.value
scoreboard players set #green_2_factor voxelsmith.value 2222
scoreboard players operation #green_2 voxelsmith.value /= #green_2_factor voxelsmith.value 

scoreboard players operation #green voxelsmith.value = #green_3 voxelsmith.value
scoreboard players operation #green voxelsmith.value -= #green_2 voxelsmith.value


# Blue
scoreboard players operation #blue_3 voxelsmith.value = #t^3 voxelsmith.value
scoreboard players set #blue_3_factor voxelsmith.value 2000000
scoreboard players operation #blue_3 voxelsmith.value /= #blue_3_factor voxelsmith.value 

scoreboard players operation #blue_2 voxelsmith.value = #t^2 voxelsmith.value
scoreboard players set #blue_2_factor voxelsmith.value 1667
scoreboard players operation #blue_2 voxelsmith.value /= #blue_2_factor voxelsmith.value 

scoreboard players operation #blue voxelsmith.value = #blue_3 voxelsmith.value
scoreboard players operation #blue voxelsmith.value -= #blue_2 voxelsmith.value


# Mix

scoreboard players operation #red voxelsmith.value *= #65536 voxelsmith.value
scoreboard players operation #green voxelsmith.value *= #256 voxelsmith.value

scoreboard players operation #c voxelsmith.value = #red voxelsmith.value
scoreboard players operation #c voxelsmith.value += #green voxelsmith.value
scoreboard players operation #c voxelsmith.value += #blue voxelsmith.value

return run scoreboard players get #c voxelsmith.value