# Get item temperature
execute store result score #temperature voxelsmith.value run data get entity @s Item.components."minecraft:custom_data".voxelsmith.temperature.value

# Cool
execute if score #temperature voxelsmith.value = #AMBIENT_TEMPERATURE voxelsmith.value run return fail
$execute if score #temperature voxelsmith.value > #AMBIENT_TEMPERATURE voxelsmith.value run scoreboard players remove #temperature voxelsmith.value $(cooling_rate)
execute if score #temperature voxelsmith.value < #AMBIENT_TEMPERATURE voxelsmith.value run scoreboard players operation #temperature voxelsmith.value = #AMBIENT_TEMPERATURE voxelsmith.value

# Update item
data modify storage voxelsmith:temperature slot set value 0
execute store result storage voxelsmith:temperature timestamp int 1 run time query gametime
execute store result storage voxelsmith:temperature temperature int 1 run scoreboard players get #temperature voxelsmith.value
function voxelsmith:temperature/update_item with storage voxelsmith:temperature

# Effects
particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0.25 0.25 0.25 0.01 5
playsound minecraft:block.fire.extinguish block @a ~ ~ ~