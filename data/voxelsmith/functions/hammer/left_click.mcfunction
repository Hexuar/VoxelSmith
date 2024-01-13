advancement revoke @s only voxelsmith:left_click_metal_voxel

execute store result storage voxelsmith:data pitch float 0.01 run random value 90..100
function voxelsmith:hammer/playsound with storage voxelsmith:data

execute store result score #use_durability voxelsmith.value run random value 0..1
execute if entity @s[gamemode=!creative] if score #use_durability voxelsmith.value matches 1 run function voxelsmith:durability/damage_item

function voxelsmith:hammer/get_dir

tag @s add voxelsmith.this
scoreboard players operation #current_hammer_mode voxelsmith.hammer_mode = @s voxelsmith.hammer_mode
execute as @e[type=interaction,tag=voxelsmith.metal_voxel,distance=..6,sort=nearest] at @s run function voxelsmith:hammer/left_click/find_attacked
tag @e remove voxelsmith.this