# Get temperature and timestamp
$execute store result score #timestamp voxelsmith.value run data get entity @s Inventory[{Slot:$(slot)b}].tag.voxelsmith.timestamp
$execute store result score #temperature voxelsmith.value run data get entity @s Inventory[{Slot:$(slot)b}].tag.voxelsmith.temperature

# Check if updating is necessary
scoreboard players set #continue voxelsmith.value 0
execute if score #temperature voxelsmith.value matches 26.. run scoreboard players set #continue voxelsmith.value 1

# Calculate temperature difference from time difference
scoreboard players operation #delta_temperature voxelsmith.value = #current_timestamp voxelsmith.value
scoreboard players operation #delta_temperature voxelsmith.value -= #timestamp voxelsmith.value
scoreboard players operation #delta_temperature voxelsmith.value /= #20 voxelsmith.value

# Reduce temperature by temperature difference
execute if score #continue voxelsmith.value matches 1 run scoreboard players operation #temperature voxelsmith.value -= #delta_temperature voxelsmith.value
execute if score #temperature voxelsmith.value < #delta_temperature voxelsmith.value run scoreboard players set #temperature voxelsmith.value 25

# Store temperature and timestamp
execute store result storage voxelsmith:temperature temperature int 1 run scoreboard players get #temperature voxelsmith.value
execute store result storage voxelsmith:temperature timestamp int 1 run scoreboard players get #current_timestamp voxelsmith.value


$execute if score #continue voxelsmith.value matches 1 run item modify entity @s container.$(slot) voxelsmith:hot_ingot