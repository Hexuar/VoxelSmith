execute store result score #count kingsandcastles.value run data get entity @s Item.Count
execute if score #count kingsandcastles.value matches 9.. run return 0

data modify storage kingsandcastles:smithing/data metal set from entity @s Item.tag.kingsandcastles.block_item

execute if block ~ ~-1 ~ anvil[facing=north] positioned ~0.09375 ~ ~-0.28125 rotated 90 0 run function kingsandcastles:smithing/metal_shape/summon
execute if block ~ ~-1 ~ anvil[facing=east] positioned ~-0.28125 ~ ~-0.09375 rotated 0 0 run function kingsandcastles:smithing/metal_shape/summon
execute if block ~ ~-1 ~ anvil[facing=south] positioned ~0.09375 ~ ~-0.28125 rotated 90 0 run function kingsandcastles:smithing/metal_shape/summon
execute if block ~ ~-1 ~ anvil[facing=west] positioned ~-0.28125 ~ ~-0.09375 rotated 0 0 run function kingsandcastles:smithing/metal_shape/summon

kill @s