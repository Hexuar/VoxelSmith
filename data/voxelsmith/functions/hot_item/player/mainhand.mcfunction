execute store result score #temperature voxelsmith.value run data get entity @s SelectedItem.components.minecraft:custom_data.voxelsmith.temperature
execute if score #temperature voxelsmith.value matches 50.. run damage @s 1 in_fire