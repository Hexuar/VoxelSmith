execute store result score #current_damage kingsandcastles.value run data get entity @s SelectedItem.tag.Damage
scoreboard players set #added_damage kingsandcastles.value 1
scoreboard players operation #current_damage kingsandcastles.value += #added_damage kingsandcastles.value
execute store result storage kingsandcastles:smithing/data Damage int 1 run scoreboard players get #current_damage kingsandcastles.value
item modify entity @s weapon.mainhand kingsandcastles:smithing/copy_damage