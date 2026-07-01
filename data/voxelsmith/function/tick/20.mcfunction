# Item heating
execute as @e[type=minecraft:item] at @s if block ~ ~-0.1 ~ #voxelsmith:heating if items entity @s container.* #voxelsmith:heatable run function voxelsmith:temperature/heat_item {max_temperature:1000, heating_rate:20}

# Item quenching
execute as @e[type=minecraft:item] at @s if block ~ ~ ~ #voxelsmith:quenching if data entity @s Item.components."minecraft:custom_data".voxelsmith.temperature run function voxelsmith:temperature/cool_item {cooling_rate:30}

# Inventory cooling
execute as @a if items entity @s container.* *[minecraft:custom_data~{voxelsmith:{temperature:{}}}] run function voxelsmith:temperature/inventory/update