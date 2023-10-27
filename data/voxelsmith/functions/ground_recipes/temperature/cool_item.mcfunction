scoreboard players set #delta_temperature voxelsmith.value -10
function voxelsmith:ground_recipes/temperature/change_temperature

# Effects
execute store result score #play_sound voxelsmith.value run random value 0..1
execute if score #temperature voxelsmith.value matches 40.. if score #play_sound voxelsmith.value matches 0 run playsound block.lava.extinguish neutral @a ~ ~ ~
execute if score #temperature voxelsmith.value matches 40.. run particle campfire_cosy_smoke ~ ~0.4 ~ 0 0 0 0.05 5