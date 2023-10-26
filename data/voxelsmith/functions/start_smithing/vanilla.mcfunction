data modify entity @s Item.tag.voxelsmith.smithing_ingot set value 1b

execute as @s[nbt={Item:{id:"minecraft:copper_ingot"}}] run function voxelsmith:start_smithing/vanilla/copper_ingot
execute as @s[nbt={Item:{id:"minecraft:gold_ingot"}}] run function voxelsmith:start_smithing/vanilla/gold_ingot
execute as @s[nbt={Item:{id:"minecraft:iron_ingot"}}] run function voxelsmith:start_smithing/vanilla/iron_ingot
execute as @s[nbt={Item:{id:"minecraft:netherite_ingot"}}] run function voxelsmith:start_smithing/vanilla/netherite_ingot

data remove entity @s Item.tag.voxelsmith.smithing_ingot
data remove entity @s Item.tag.voxelsmith.block_item