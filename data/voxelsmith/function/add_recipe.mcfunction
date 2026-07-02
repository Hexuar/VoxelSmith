$data modify storage voxelsmith:smithing recipes append value $(recipe)
$execute if score #debug voxelsmith.value matches 1 run tellraw @a {"text":"loaded $(id)","color":"gray"}