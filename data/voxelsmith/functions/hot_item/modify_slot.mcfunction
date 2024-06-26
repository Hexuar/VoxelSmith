# Get current item
$data modify storage voxelsmith:temperature CurrentItem set from entity @s Inventory[{Slot:$(slot)b}]

# Get Values
execute store result score #timestamp voxelsmith.value run data get storage voxelsmith:temperature CurrentItem.components.minecraft:custom_data.voxelsmith.timestamp
execute store result score #temperature voxelsmith.value run data get storage voxelsmith:temperature CurrentItem.components.minecraft:custom_data.voxelsmith.temperature
execute store result score #CustomModelData voxelsmith.value run data get storage voxelsmith:temperature CurrentItem.components.minecraft:custom_model_data
execute store success score #hasLore voxelsmith.value run data get storage voxelsmith:temperature CurrentItem.components.minecraft:lore
execute store success score #storeLore voxelsmith.value run data get storage voxelsmith:temperature CurrentItem.components.minecraft:custom_data.voxelsmith.Lore

data modify storage voxelsmith:temperature Lore set from storage voxelsmith:temperature CurrentItem.components.minecraft:lore

# Check if CustomModelData should be updated with temperature
scoreboard players set #temperature_model voxelsmith.value 1

data modify storage voxelsmith:temperature CurrentItemId set from storage voxelsmith:temperature CurrentItem.id
execute store success score #copper_ingot voxelsmith.value run data modify storage voxelsmith:temperature CurrentItemId set value "minecraft:copper_ingot"
data modify storage voxelsmith:temperature CurrentItemId set from storage voxelsmith:temperature CurrentItem.id
execute store success score #iron_ingot voxelsmith.value run data modify storage voxelsmith:temperature CurrentItemId set value "minecraft:iron_ingot"
data modify storage voxelsmith:temperature CurrentItemId set from storage voxelsmith:temperature CurrentItem.id
execute store success score #gold_ingot voxelsmith.value run data modify storage voxelsmith:temperature CurrentItemId set value "minecraft:gold_ingot"
data modify storage voxelsmith:temperature CurrentItemId set from storage voxelsmith:temperature CurrentItem.id
execute store success score #netherite_ingot voxelsmith.value run data modify storage voxelsmith:temperature CurrentItemId set value "minecraft:netherite_ingot"

execute if score #copper_ingot voxelsmith.value matches 0 run scoreboard players set #temperature_model voxelsmith.value 0
execute if score #iron_ingot voxelsmith.value matches 0 run scoreboard players set #temperature_model voxelsmith.value 0
execute if score #gold_ingot voxelsmith.value matches 0 run scoreboard players set #temperature_model voxelsmith.value 0
execute if score #netherite_ingot voxelsmith.value matches 0 run scoreboard players set #temperature_model voxelsmith.value 0

# Check if updating is necessary
scoreboard players set #continue voxelsmith.value 0
execute if score #temperature voxelsmith.value matches 26.. run scoreboard players set #continue voxelsmith.value 1

# Calculate temperature difference from time difference
scoreboard players operation #delta_temperature voxelsmith.value = #current_timestamp voxelsmith.value
scoreboard players operation #delta_temperature voxelsmith.value -= #timestamp voxelsmith.value
scoreboard players operation #delta_temperature voxelsmith.value /= #20 voxelsmith.value

# Reduce temperature by temperature difference
execute if score #continue voxelsmith.value matches 1 run scoreboard players operation #temperature voxelsmith.value -= #delta_temperature voxelsmith.value
execute if score #temperature voxelsmith.value < #delta_temperature voxelsmith.value run scoreboard players operation #temperature voxelsmith.value = #min_temperature voxelsmith.value
execute if score #temperature voxelsmith.value matches ..24 run scoreboard players operation #temperature voxelsmith.value = #min_temperature voxelsmith.value

# Custom Model Data
execute if score #temperature_model voxelsmith.value matches 0 run scoreboard players set #CustomModelData voxelsmith.value 222180000
execute if score #temperature_model voxelsmith.value matches 0 run scoreboard players operation #CustomModelData voxelsmith.value += #temperature voxelsmith.value
execute if score #temperature_model voxelsmith.value matches 0 run execute store result entity @s Item.components.minecraft:custom_model_data int 1 run scoreboard players get #CustomModelData voxelsmith.value


# Reset timestamp at 25°C
execute if score #continue voxelsmith.value matches 1 run scoreboard players operation #stored_timestamp voxelsmith.value = #current_timestamp voxelsmith.value
execute if score #continue voxelsmith.value matches 1 if score #temperature voxelsmith.value = #min_temperature voxelsmith.value run scoreboard players set #stored_timestamp voxelsmith.value 0

# Store data
execute store result storage voxelsmith:temperature temperature int 1 run scoreboard players get #temperature voxelsmith.value
execute store result storage voxelsmith:temperature timestamp int 1 run scoreboard players get #stored_timestamp voxelsmith.value
execute store result storage voxelsmith:temperature CustomModelData int 1 run scoreboard players get #CustomModelData voxelsmith.value

execute if score #storeLore voxelsmith.value matches 0 if score #hasLore voxelsmith.value matches 0 run data modify storage voxelsmith:temperature Lore set value []
$execute if score #storeLore voxelsmith.value matches 0 run item modify entity @s container.$(slot) voxelsmith:store_original_lore

data modify storage voxelsmith:temperature Lore set from storage voxelsmith:temperature CurrentItem.components.minecraft:custom_data.voxelsmith.Lore
$execute if score #continue voxelsmith.value matches 1 run item modify entity @s container.$(slot) voxelsmith:hot_item
execute if score #continue voxelsmith.value matches 1 run function voxelsmith:hot_item/set_custom_model_data with storage voxelsmith:temperature

$execute if score #continue voxelsmith.value matches 1 if score #temperature voxelsmith.value matches ..39 run item modify entity @s container.$(slot) voxelsmith:add_temperature/very_low
$execute if score #continue voxelsmith.value matches 1 if score #temperature voxelsmith.value matches 40..99 run item modify entity @s container.$(slot) voxelsmith:add_temperature/low
$execute if score #continue voxelsmith.value matches 1 if score #temperature voxelsmith.value matches 100..899 run item modify entity @s container.$(slot) voxelsmith:add_temperature/medium
$execute if score #continue voxelsmith.value matches 1 if score #temperature voxelsmith.value matches 900.. run item modify entity @s container.$(slot) voxelsmith:add_temperature/high