scoreboard players operation #delta_temperature voxelsmith.value = #item_cooling_speed voxelsmith.value
scoreboard players operation #delta_temperature voxelsmith.value *= #-1 voxelsmith.value

function voxelsmith:ground_recipes/temperature/change_temperature

advancement grant @p[distance=..4] only voxelsmith:tutorial/cool_item

execute if score #temperature voxelsmith.value matches ..70 unless entity @s[type=item,nbt={Item:{components:{"minecraft:custom_data":{voxelsmith:{crafting_item:1b}}}}}] unless entity @s[type=item,nbt={Item:{components:{"minecraft:custom_data":{voxelsmith:{keep_data_when_cooled:1b}}}}}] run function voxelsmith:ground_recipes/temperature/clear

# Effects
execute store result score #play_sound voxelsmith.value run random value 0..1
execute if score #temperature voxelsmith.value matches 70.. if score #play_sound voxelsmith.value matches 0 run playsound block.lava.extinguish block @a ~ ~ ~
execute if score #temperature voxelsmith.value matches 70.. run particle campfire_cosy_smoke ~ ~0.4 ~ 0 0 0 0.05 5