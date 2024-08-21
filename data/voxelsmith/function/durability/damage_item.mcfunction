execute store result score #current_damage voxelsmith.value run data get entity @s SelectedItem.components."minecraft:damage"
scoreboard players set #added_damage voxelsmith.value 1

scoreboard players operation #current_damage voxelsmith.value += #added_damage voxelsmith.value
execute store result storage voxelsmith:data damage int 1 run scoreboard players get #current_damage voxelsmith.value
function voxelsmith:durability/set_damage with storage voxelsmith:data

execute if items entity @s weapon.mainhand *[damage~{durability:{max:0}}] run function voxelsmith:durability/break_item