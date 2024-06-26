execute if entity @s[tag=!voxelsmith.knapping_shape] run advancement grant @a[distance=..4] only voxelsmith:tutorial/forge_item
execute if entity @s[tag=voxelsmith.knapping_shape] run advancement grant @a[distance=..4] only voxelsmith:tutorial/knap_item

playsound entity.item.pickup block @a ~ ~ ~

function voxelsmith:recipe_checker/spawn_loot with storage voxelsmith:smithing recipes[0].materials[0]

execute if entity @s[tag=!voxelsmith.knapping_shape] run data modify entity @e[type=item,sort=nearest,limit=1] Item.components.minecraft:custom_data.voxelsmith.temperature set from entity @e[type=marker,tag=voxelsmith.voxel_shape,sort=nearest,limit=1] data.temperature
execute if entity @s[tag=!voxelsmith.knapping_shape] as @e[type=item,sort=nearest,limit=1] run function voxelsmith:ground_recipes/temperature/change_temperature

function voxelsmith:voxel_shape/kill