advancement grant @a[distance=..4] only voxelsmith:tutorial/forge_item

playsound entity.item.pickup block @a ~ ~ ~

function voxelsmith:recipe_checker/spawn_loot with storage voxelsmith:smithing recipes[0].metals[0]

data modify entity @e[type=item,sort=nearest,limit=1] Item.tag.voxelsmith.temperature set from entity @e[type=item_display,tag=voxelsmith.metal_voxel,sort=nearest,limit=1] item.tag.voxelsmith.temperature
execute as @e[type=item,sort=nearest,limit=1] run function voxelsmith:ground_recipes/temperature/change_temperature

function voxelsmith:metal_shape/kill