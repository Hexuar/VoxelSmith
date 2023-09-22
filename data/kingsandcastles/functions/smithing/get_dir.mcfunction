execute store result score #rot kingsandcastles.value run data get entity @s Rotation[0]

execute if score #rot kingsandcastles.value matches 45..135 run scoreboard players set #dir kingsandcastles.value 1
execute if score #rot kingsandcastles.value matches 135..180 run scoreboard players set #dir kingsandcastles.value 2
execute if score #rot kingsandcastles.value matches -180..-135 run scoreboard players set #dir kingsandcastles.value 2
execute if score #rot kingsandcastles.value matches -135..-45 run scoreboard players set #dir kingsandcastles.value 3
execute if score #rot kingsandcastles.value matches -45..0 run scoreboard players set #dir kingsandcastles.value 0
execute if score #rot kingsandcastles.value matches 0..45 run scoreboard players set #dir kingsandcastles.value 0