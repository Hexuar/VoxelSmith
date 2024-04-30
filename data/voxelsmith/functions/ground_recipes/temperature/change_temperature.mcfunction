# Get item temperature
execute store result score #temperature voxelsmith.value run data get entity @s Item.components.minecraft:custom_data.voxelsmith.temperature
execute if score #temperature voxelsmith.value matches 0 run scoreboard players operation #temperature voxelsmith.value = #min_temperature voxelsmith.value

# Change item temperature
scoreboard players operation #limit_min voxelsmith.value = #min_temperature voxelsmith.value
scoreboard players operation #limit_min voxelsmith.value -= #delta_temperature voxelsmith.value

scoreboard players operation #limit_max voxelsmith.value = #max_temperature voxelsmith.value
scoreboard players operation #limit_max voxelsmith.value -= #delta_temperature voxelsmith.value

execute if score #temperature voxelsmith.value >= #limit_min voxelsmith.value if score #temperature voxelsmith.value <= #limit_max voxelsmith.value run scoreboard players operation #temperature voxelsmith.value += #delta_temperature voxelsmith.value

# Custom Model Data
execute store success score #temperature_model voxelsmith.value if predicate voxelsmith:item/is_ingot
execute if score #temperature_model voxelsmith.value matches 1 run scoreboard players set #CustomModelData voxelsmith.value 222180000
execute if score #temperature_model voxelsmith.value matches 1 run scoreboard players operation #CustomModelData voxelsmith.value += #temperature voxelsmith.value
execute if score #temperature_model voxelsmith.value matches 1 run execute store result entity @s Item.components.minecraft:custom_model_data int 1 run scoreboard players get #CustomModelData voxelsmith.value

# Store item temperature
execute store result entity @s Item.components.minecraft:custom_data.voxelsmith.temperature int 1 run scoreboard players get #temperature voxelsmith.value

# Add item tag & prevent despawn
data modify entity @s Item.components.minecraft:custom_data.voxelsmith.has_temperature set value 1b
data modify entity @s Age set value 0s

# Add timestamp
execute store result score #current_timestamp voxelsmith.value run time query gametime
execute store result entity @s Item.components.minecraft:custom_data.voxelsmith.timestamp int 1 run scoreboard players get #current_timestamp voxelsmith.value