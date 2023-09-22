execute if score #dir kingsandcastles.value matches 3 run tp ~0.0625 ~ ~
execute if score #dir kingsandcastles.value matches 0 run tp ~ ~ ~0.0625
execute if score #dir kingsandcastles.value matches 1 run tp ~-0.0625 ~ ~
execute if score #dir kingsandcastles.value matches 2 run tp ~ ~ ~-0.0625

execute if score #dir kingsandcastles.value matches 3 run scoreboard players add @s kingsandcastles.pos.x 1
execute if score #dir kingsandcastles.value matches 0 run scoreboard players add @s kingsandcastles.pos.z 1
execute if score #dir kingsandcastles.value matches 1 run scoreboard players remove @s kingsandcastles.pos.x 1
execute if score #dir kingsandcastles.value matches 2 run scoreboard players remove @s kingsandcastles.pos.z 1