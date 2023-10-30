scoreboard players operation #delta_temperature voxelsmith.value = #item_cooling_speed voxelsmith.value
scoreboard players operation #delta_temperature voxelsmith.value *= #-1 voxelsmith.value
function voxelsmith:ground_recipes/temperature/change_temperature

execute as @s[nbt={Item:{tag:{voxelsmith:{crafting_item:1b}}}}] if score #temperature voxelsmith.value matches ..40 run data modify entity @s Item.tag.voxelsmith.too_hot set value 0b

# Effects
execute store result score #play_sound voxelsmith.value run random value 0..1
execute if score #temperature voxelsmith.value matches 40.. if score #play_sound voxelsmith.value matches 0 run playsound block.lava.extinguish neutral @a ~ ~ ~
execute if score #temperature voxelsmith.value matches 40.. run particle campfire_cosy_smoke ~ ~0.4 ~ 0 0 0 0.05 5