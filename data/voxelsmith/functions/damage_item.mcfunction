execute store result score #current_damage voxelsmith.value run data get entity @s SelectedItem.tag.Damage
scoreboard players set #added_damage voxelsmith.value 1
scoreboard players operation #current_damage voxelsmith.value += #added_damage voxelsmith.value
execute store result storage voxelsmith:data Damage int 1 run scoreboard players get #current_damage voxelsmith.value
item modify entity @s weapon.mainhand voxelsmith:copy_damage