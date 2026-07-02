scoreboard players set #bool voxelsmith.value 0

execute on attacker store result score #bool voxelsmith.value if entity @s[tag=voxelsmith.this]
execute on target store result score #bool voxelsmith.value if entity @s[tag=voxelsmith.this]

execute if score #bool voxelsmith.value matches 1 run function voxelsmith:hammer/use/on_voxel