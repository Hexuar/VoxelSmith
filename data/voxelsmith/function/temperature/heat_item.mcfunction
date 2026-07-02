# Get item temperature
execute store result score #temperature voxelsmith.value run data get entity @s Item.components."minecraft:custom_data".voxelsmith.temperature.value

# Heat
execute if score #temperature voxelsmith.value matches 0 run scoreboard players operation #temperature voxelsmith.value = #AMBIENT_TEMPERATURE voxelsmith.value
$execute if score #temperature voxelsmith.value matches ..$(max_temperature) run scoreboard players add #temperature voxelsmith.value $(heating_rate)
$execute unless score #temperature voxelsmith.value matches ..$(max_temperature) run scoreboard players set #temperature voxelsmith.value $(max_temperature)

# Make persistent
data modify entity @s Age set value 0

# Update item
data modify storage voxelsmith:temperature slot set value 0
execute store result storage voxelsmith:temperature timestamp int 1 run time query gametime
execute store result storage voxelsmith:temperature temperature int 1 run scoreboard players get #temperature voxelsmith.value
function voxelsmith:temperature/update_item with storage voxelsmith:temperature

# Effects
particle flame ~ ~ ~ 0.25 0.25 0.25 0.01 5
playsound minecraft:block.furnace.fire_crackle block @a ~ ~ ~