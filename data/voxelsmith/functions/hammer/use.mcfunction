# Sound
execute store result storage voxelsmith:data pitch float 0.01 run random value 90..100
function voxelsmith:hammer/playsound with storage voxelsmith:data

# Durability
execute store result score #use_durability voxelsmith.value run random value 0..1
execute if entity @s[gamemode=!creative] if score #use_durability voxelsmith.value matches 1 run function voxelsmith:durability/damage_item

# Direction
function voxelsmith:hammer/get_dir
execute store result score #is_sneaking voxelsmith.value if predicate voxelsmith:is_sneaking

# Voxel
tag @s add voxelsmith.this
execute as @e[type=interaction,tag=voxelsmith.metal_voxel,distance=..6,sort=nearest] at @s run function voxelsmith:hammer/use/find_attacked
tag @a remove voxelsmith.this