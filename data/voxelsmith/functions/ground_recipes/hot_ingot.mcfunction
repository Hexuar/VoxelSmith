# Get item temperature
execute store result score #temperature voxelsmith.value run data get entity @s Item.tag.voxelsmith.temperature
execute if score #temperature voxelsmith.value matches 0 run scoreboard players set #temperature voxelsmith.value 20

# Increase item temperature
execute if score #temperature voxelsmith.value matches ..1400 run scoreboard players add #temperature voxelsmith.value 1

# Store item temperature
execute store result entity @s Item.tag.voxelsmith.temperature int 1 run scoreboard players get #temperature voxelsmith.value

# Add item tag & prevent despawn
data modify entity @s Item.tag.voxelsmith.hot_ingot set value 1b
data modify entity @s Age set value 0s

# Add timestamp
execute store result score #current_timestamp voxelsmith.value run time query gametime
execute store result entity @s Item.tag.voxelsmith.timestamp int 1 run scoreboard players get #current_timestamp voxelsmith.value

# Effects
execute store result score #play_sound voxelsmith.value run random value 0..10
execute if score #play_sound voxelsmith.value matches 0 run playsound block.fire.ambient neutral @a ~ ~ ~
particle flame ~ ~0.33 ~ 0.1 0.1 0.1 0.01 1 normal