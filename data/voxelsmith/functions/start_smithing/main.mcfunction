# Count check
execute store result score #count voxelsmith.value run data get entity @s Item.count
execute if score #count voxelsmith.value matches 16.. run title @p[distance=..5] actionbar {"text":"Too much metal, maximum stack size is 8","color":"red"}
execute if score #count voxelsmith.value matches 16.. run return 0

# Temperature check
execute store result score #temperature voxelsmith.value run data get entity @s Item.components.minecraft:custom_data.voxelsmith.temperature
execute unless score #temperature voxelsmith.value matches 800.. run title @p[distance=..5] actionbar {"text":"Metal is too cold, heat on a magma block first.","color":"red"}
execute unless score #temperature voxelsmith.value matches 800.. run return 0

# Store Color Palette Length
execute store result score #colorPaletteLength voxelsmith.value run data get storage voxelsmith:data colorPalette
scoreboard players remove #colorPaletteLength voxelsmith.value 1
execute store result storage voxelsmith:data colorPaletteLength int 1 run scoreboard players get #colorPaletteLength voxelsmith.value

# Pass metal
data modify storage voxelsmith:data metal set from entity @s Item.components.minecraft:custom_data.voxelsmith.metal

execute if block ~ ~-1 ~ anvil[facing=north] positioned ~0.09375 ~ ~-0.28125 rotated 90 0 run function voxelsmith:metal_shape/summon
execute if block ~ ~-1 ~ anvil[facing=east] positioned ~-0.28125 ~ ~-0.09375 rotated 0 0 run function voxelsmith:metal_shape/summon
execute if block ~ ~-1 ~ anvil[facing=south] positioned ~0.09375 ~ ~-0.28125 rotated 90 0 run function voxelsmith:metal_shape/summon
execute if block ~ ~-1 ~ anvil[facing=west] positioned ~-0.28125 ~ ~-0.09375 rotated 0 0 run function voxelsmith:metal_shape/summon

kill @s