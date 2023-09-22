advancement revoke @s only kingsandcastles:smithing/left_click_metal_voxel

playsound block.anvil.step player @a ~ ~ ~ 1 1
playsound block.anvil.place player @a ~ ~ ~ 0.1 1

execute if entity @s[gamemode=!creative] run function kingsandcastles:smithing/damage_item

function kingsandcastles:smithing/get_dir

tag @s add kingsandcastles.this
scoreboard players operation #current_hammer_mode kingsandcastles.hammer_mode = @s kingsandcastles.hammer_mode
execute as @e[type=interaction,tag=kingsandcastles.metal_voxel,distance=..6,sort=nearest] at @s run function kingsandcastles:smithing/hammer/left_click/find_attacked
tag @e remove kingsandcastles.this