execute store result score #temperature voxelsmith.value run data get entity @e[type=item,sort=nearest,limit=1,nbt={Item:{tag:{voxelsmith:{has_temperature:1b}}}}] Item.tag.voxelsmith.temperature

execute if score #temperature voxelsmith.value matches 60.. run function voxelsmith:ground_recipes/failed
execute if score #temperature voxelsmith.value matches 60.. run return 0

advancement grant @p[distance=..4] only voxelsmith:tutorial/craft_item
playsound block.anvil.use block @a ~ ~ ~
kill @s

return 1