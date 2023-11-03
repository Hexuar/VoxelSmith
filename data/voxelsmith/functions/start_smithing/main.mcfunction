execute store result score #count voxelsmith.value run data get entity @s Item.Count
execute if score #count voxelsmith.value matches 9.. run title @p[distance=..5] actionbar {"text":"Too much metal, maximum stack size is 8","color":"red"}
execute if score #count voxelsmith.value matches 9.. run return 0

execute store result score #temperature voxelsmith.value run data get entity @s Item.tag.voxelsmith.temperature
execute unless score #temperature voxelsmith.value matches 900.. run title @p[distance=..5] actionbar {"text":"Metal is too cold, heat on a magma block first.","color":"red"}
execute unless score #temperature voxelsmith.value matches 900.. run return 0

execute store result score #CustomModelData voxelsmith.value run data get entity @s Item.tag.voxelsmith.metal_voxel.tag.CustomModelData
scoreboard players operation #CustomModelData voxelsmith.value += #temperature voxelsmith.value

execute store result entity @s Item.tag.voxelsmith.metal_voxel.tag.CustomModelData int 1 run scoreboard players get #CustomModelData voxelsmith.value

execute store result entity @s Item.tag.voxelsmith.metal_voxel.tag.voxelsmith.temperature int 1 run scoreboard players get #temperature voxelsmith.value

data modify storage voxelsmith:data metal set from entity @s Item.tag.voxelsmith.metal
data modify storage voxelsmith:data metal_voxel set from entity @s Item.tag.voxelsmith.metal_voxel

execute if block ~ ~-1 ~ anvil[facing=north] positioned ~0.09375 ~ ~-0.28125 rotated 90 0 run function voxelsmith:metal_shape/summon
execute if block ~ ~-1 ~ anvil[facing=east] positioned ~-0.28125 ~ ~-0.09375 rotated 0 0 run function voxelsmith:metal_shape/summon
execute if block ~ ~-1 ~ anvil[facing=south] positioned ~0.09375 ~ ~-0.28125 rotated 90 0 run function voxelsmith:metal_shape/summon
execute if block ~ ~-1 ~ anvil[facing=west] positioned ~-0.28125 ~ ~-0.09375 rotated 0 0 run function voxelsmith:metal_shape/summon

kill @s