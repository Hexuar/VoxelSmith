scoreboard players set #tick20 voxelsmith.value 0

execute as @a[nbt={Inventory:[{tag:{voxelsmith:{has_temperature:1b}}}]}] run function voxelsmith:hot_item/update