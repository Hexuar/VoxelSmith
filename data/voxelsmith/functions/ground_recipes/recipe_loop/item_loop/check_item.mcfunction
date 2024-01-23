$execute unless entity @e[type=item,nbt={Item:$(item)},distance=..1,sort=nearest,limit=1] run return 0

$execute store result score #temperature voxelsmith.value run data get entity @e[type=item,nbt={Item:$(item)},distance=..1,sort=nearest,limit=1] Item.tag.voxelsmith.temperature

execute if score #temperature voxelsmith.value matches 60.. run function voxelsmith:ground_recipes/failed
execute if score #temperature voxelsmith.value matches 60.. run return 0

$tag @e[type=item,nbt={Item:$(item)},distance=..1,sort=nearest,limit=1] add voxelsmith.current
return 1