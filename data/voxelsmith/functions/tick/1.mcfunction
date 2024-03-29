# Kill ingots
execute as @e[type=marker,tag=voxelsmith.metal_shape] at @s unless block ~ ~-1 ~ anvil run function voxelsmith:metal_shape/kill

# Damage players
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{voxelsmith:{has_temperature:1b}}}}}] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{voxelsmith:{tongs:1b}}}]}] run function voxelsmith:hot_item/player/mainhand
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{voxelsmith:{has_temperature:1b}}}]}] unless entity @s[nbt={SelectedItem:{tag:{voxelsmith:{tongs:1b}}}}] run function voxelsmith:hot_item/player/offhand
execute as @a if predicate voxelsmith:has_hot_armor run function voxelsmith:hot_item/player/armor