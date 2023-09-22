execute store result score @s kingsandcastles.pos.x run data get entity @s Pos[0] 10000
execute store result score @s kingsandcastles.pos.y run data get entity @s Pos[1] 10000
execute store result score @s kingsandcastles.pos.z run data get entity @s Pos[2] 10000

scoreboard players operation @s kingsandcastles.pos.x -= #origin.x kingsandcastles.value
scoreboard players operation @s kingsandcastles.pos.y -= #origin.y kingsandcastles.value
scoreboard players operation @s kingsandcastles.pos.z -= #origin.z kingsandcastles.value

scoreboard players operation @s kingsandcastles.pos.x /= #625 kingsandcastles.value
scoreboard players operation @s kingsandcastles.pos.y /= #625 kingsandcastles.value
scoreboard players operation @s kingsandcastles.pos.z /= #625 kingsandcastles.value