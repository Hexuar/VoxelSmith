# Get item temperature
execute store result score #temperature voxelsmith.value run data get entity @s Item.tag.voxelsmith.temperature
execute if score #temperature voxelsmith.value matches 0 run scoreboard players set #temperature voxelsmith.value 20

# Increase item temperature
execute if score #temperature voxelsmith.value matches 40.. run scoreboard players remove #temperature voxelsmith.value 10

# Custom Model Data
scoreboard players set #CustomModelData voxelsmith.value 222180000
scoreboard players operation #CustomModelData voxelsmith.value += #temperature voxelsmith.value
execute store result entity @s Item.tag.CustomModelData int 1 run scoreboard players get #CustomModelData voxelsmith.value

# Store item temperature
execute store result entity @s Item.tag.voxelsmith.temperature int 1 run scoreboard players get #temperature voxelsmith.value

# Add item tag & prevent despawn
data modify entity @s Item.tag.voxelsmith.hot set value 1b
data modify entity @s Age set value 0s

# Add timestamp
execute store result score #current_timestamp voxelsmith.value run time query gametime
execute store result entity @s Item.tag.voxelsmith.timestamp int 1 run scoreboard players get #current_timestamp voxelsmith.value

# Effects
execute store result score #play_sound voxelsmith.value run random value 0..5
execute if score #temperature voxelsmith.value matches 40.. if score #play_sound voxelsmith.value matches 0 run playsound block.bubble_column.bubble_pop neutral @a ~ ~ ~
execute if score #temperature voxelsmith.value matches 40.. run particle campfire_cosy_smoke ~ ~0.4 ~ 0 0 0 0.05 5