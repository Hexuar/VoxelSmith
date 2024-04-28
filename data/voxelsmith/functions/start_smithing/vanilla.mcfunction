data modify entity @s Item.components.minecraft:custom_data.voxelsmith.smithing_ingot set value 1b

execute as @s[nbt={Item:{id:"minecraft:copper_ingot"}}] run function voxelsmith:start_smithing/vanilla/copper_ingot
execute as @s[nbt={Item:{id:"minecraft:gold_ingot"}}] run function voxelsmith:start_smithing/vanilla/gold_ingot
execute as @s[nbt={Item:{id:"minecraft:iron_ingot"}}] run function voxelsmith:start_smithing/vanilla/iron_ingot
execute as @s[nbt={Item:{id:"minecraft:netherite_ingot"}}] run function voxelsmith:start_smithing/vanilla/netherite_ingot


execute store result score #has_temperature voxelsmith.value run data get entity @s Item.components.minecraft:custom_data.voxelsmith.has_temperature

execute if score #has_temperature voxelsmith.value matches 1 run data remove entity @s Item.components.minecraft:custom_data.voxelsmith.smithing_ingot
execute if score #has_temperature voxelsmith.value matches 1 run data remove entity @s Item.components.minecraft:custom_data.voxelsmith.metal
execute if score #has_temperature voxelsmith.value matches 1 run data remove entity @s Item.components.minecraft:custom_data.voxelsmith.metal_voxel

execute if score #has_temperature voxelsmith.value matches 0 run data remove entity @s Item.components.minecraft:custom_data