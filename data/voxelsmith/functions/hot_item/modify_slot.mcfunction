# Get temperature and timestamp
$execute store result score #timestamp voxelsmith.value run data get entity @s Inventory[{Slot:$(slot)b}].tag.voxelsmith.timestamp
$execute store result score #temperature voxelsmith.value run data get entity @s Inventory[{Slot:$(slot)b}].tag.voxelsmith.temperature
$execute store result score #no_temperature_model voxelsmith.value run data get entity @s Inventory[{Slot:$(slot)b}].tag.voxelsmith.no_temperature_model
$execute store result score #CustomModelData voxelsmith.value run data get entity @s Inventory[{Slot:$(slot)b}].tag.CustomModelData


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
execute if score #temperature voxelsmith.value matches ..24 run scoreboard players set #temperature voxelsmith.value 25

# Custom Model Data
execute if score #no_temperature_model voxelsmith.value matches 0 run scoreboard players set #CustomModelData voxelsmith.value 222180000
execute if score #no_temperature_model voxelsmith.value matches 0 run scoreboard players operation #CustomModelData voxelsmith.value += #temperature voxelsmith.value
execute if score #no_temperature_model voxelsmith.value matches 0 run execute store result entity @s Item.tag.CustomModelData int 1 run scoreboard players get #CustomModelData voxelsmith.value


# Reset timestamp at 25°C
execute if score #continue voxelsmith.value matches 1 run scoreboard players operation #stored_timestamp voxelsmith.value = #current_timestamp voxelsmith.value
execute if score #continue voxelsmith.value matches 1 if score #temperature voxelsmith.value matches 25 run scoreboard players set #stored_timestamp voxelsmith.value 0

# Store data
execute store result storage voxelsmith:temperature temperature int 1 run scoreboard players get #temperature voxelsmith.value
execute store result storage voxelsmith:temperature timestamp int 1 run scoreboard players get #stored_timestamp voxelsmith.value
execute store result storage voxelsmith:temperature CustomModelData int 1 run scoreboard players get #CustomModelData voxelsmith.value

$execute if score #continue voxelsmith.value matches 1 run item modify entity @s container.$(slot) voxelsmith:hot_item