$data modify storage voxelsmith:smithing materials append value $(material)
$execute if score #debug voxelsmith.value matches 1 run tellraw @a {"text":"loaded $(id)","color":"gray"}