$summon item ~ ~ ~ {Item:$(material),Tags:["voxelsmith.new"]}

execute if entity @s[tag=voxelsmith.knapping_shape] run return fail

# Update item temperature
data modify storage voxelsmith:temperature slot set value 0
execute store result storage voxelsmith:temperature timestamp int 1 run time query gametime
data modify storage voxelsmith:temperature temperature set from entity @s data.temperature
execute as @n[tag=voxelsmith.new] run function voxelsmith:temperature/update_item with storage voxelsmith:temperature