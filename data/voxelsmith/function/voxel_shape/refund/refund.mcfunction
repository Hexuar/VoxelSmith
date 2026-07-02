$summon item ~ ~ ~ {Item:$(material),Tags:["voxelsmith.new"]}

execute if entity @s[tag=!voxelsmith.knapping_shape] run data modify entity @e[type=item,tag=voxelsmith.new,sort=nearest,limit=1] Item.components.minecraft:custom_data.voxelsmith.temperature set from entity @s data.temperature
execute if entity @s[tag=!voxelsmith.knapping_shape] as @e[type=item,tag=voxelsmith.new,sort=nearest,limit=1] run function voxelsmith:ground_recipes/temperature/change_temperature