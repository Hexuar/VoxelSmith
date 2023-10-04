advancement revoke @s only voxelsmith:smithing/left_click_metal_voxel

playsound block.anvil.step player @a ~ ~ ~ 1 1
playsound block.anvil.place player @a ~ ~ ~ 0.1 1

execute if entity @s[gamemode=!creative] run function voxelsmith:smithing/damage_item

function voxelsmith:smithing/get_dir

tag @s add voxelsmith.this
scoreboard players operation #current_hammer_mode voxelsmith.hammer_mode = @s voxelsmith.hammer_mode
execute as @e[type=interaction,tag=voxelsmith.metal_voxel,distance=..6,sort=nearest] at @s run function voxelsmith:smithing/hammer/left_click/find_attacked
tag @e remove voxelsmith.this