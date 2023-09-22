scoreboard players set #bool kingsandcastles.value 0

execute on attacker store result score #bool kingsandcastles.value if entity @s[tag=kingsandcastles.this]

execute if score #bool kingsandcastles.value matches 1 run function kingsandcastles:smithing/hammer/left_click/on_voxel