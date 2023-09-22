advancement revoke @s only kingsandcastles:smithing/right_click_metal_voxel

scoreboard players add @s kingsandcastles.hammer_mode 1
execute if score @s kingsandcastles.hammer_mode >= #hammer_modes kingsandcastles.hammer_mode run scoreboard players set @s kingsandcastles.hammer_mode 0