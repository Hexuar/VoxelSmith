execute store result score #temperature voxelsmith.value run data get entity @s Inventory[{Slot:100b}].components.minecraft:custom_data.voxelsmith.temperature
execute if score #temperature voxelsmith.value matches 50.. run damage @s 1 in_fire

execute store result score #temperature voxelsmith.value run data get entity @s Inventory[{Slot:101b}].components.minecraft:custom_data.voxelsmith.temperature
execute if score #temperature voxelsmith.value matches 50.. run damage @s 1 in_fire

execute store result score #temperature voxelsmith.value run data get entity @s Inventory[{Slot:102b}].components.minecraft:custom_data.voxelsmith.temperature
execute if score #temperature voxelsmith.value matches 50.. run damage @s 1 in_fire

execute store result score #temperature voxelsmith.value run data get entity @s Inventory[{Slot:103b}].components.minecraft:custom_data.voxelsmith.temperature
execute if score #temperature voxelsmith.value matches 50.. run damage @s 1 in_fire
