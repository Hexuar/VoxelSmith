scoreboard players operation #delta_temperature voxelsmith.value = #item_heating_speed voxelsmith.value
function voxelsmith:ground_recipes/temperature/change_temperature

advancement grant @p[distance=..4] only voxelsmith:tutorial/forge
execute if score #temperature voxelsmith.value matches 900.. run advancement grant @p[distance=..4] only voxelsmith:tutorial/hot_ingot

# Effects
execute store result score #play_sound voxelsmith.value run random value 0..10
execute if score #play_sound voxelsmith.value matches 0 run playsound block.fire.ambient block @a ~ ~ ~
particle flame ~ ~0.33 ~ 0.1 0.1 0.1 0.01 1 normal
particle smoke ~ ~0.33 ~ 0.1 0.1 0.1 0.01 1