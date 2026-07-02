# Inventory cooling
execute as @a if items entity @s container.* *[minecraft:custom_data~{voxelsmith:{temperature:{}}}] run function voxelsmith:temperature/inventory/update