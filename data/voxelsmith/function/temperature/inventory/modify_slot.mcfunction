# Get item
$execute store result score #temperature voxelsmith.value run data get entity @s Inventory[{Slot:$(slot)b}].components."minecraft:custom_data".voxelsmith.temperature.value
execute if score #temperature voxelsmith.value matches 0 run return fail
$execute store result score #timestamp voxelsmith.value run data get entity @s Inventory[{Slot:$(slot)b}].components."minecraft:custom_data".voxelsmith.temperature.timestamp

# Update temperature (1°C/s) 
scoreboard players operation #deltaTemperature voxelsmith.value = #currentTimestamp voxelsmith.value
scoreboard players operation #deltaTemperature voxelsmith.value -= #timestamp voxelsmith.value
scoreboard players operation #deltaTemperature voxelsmith.value /= #20 voxelsmith.value
scoreboard players operation #temperature voxelsmith.value -= #deltaTemperature voxelsmith.value
execute if score #temperature voxelsmith.value < #AMBIENT_TEMPERATURE voxelsmith.value run scoreboard players operation #temperature voxelsmith.value = #AMBIENT_TEMPERATURE voxelsmith.value

# Update item
$data modify storage voxelsmith:temperature slot set value $(slot)
execute store result storage voxelsmith:temperature timestamp int 1 run time query gametime
execute store result storage voxelsmith:temperature temperature int 1 run scoreboard players get #temperature voxelsmith.value
function voxelsmith:temperature/update_item with storage voxelsmith:temperature