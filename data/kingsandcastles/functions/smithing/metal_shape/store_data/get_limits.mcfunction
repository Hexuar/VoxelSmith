execute if score @s kingsandcastles.pos.x > #max.x kingsandcastles.value run scoreboard players operation #max.x kingsandcastles.value = @s kingsandcastles.pos.x
execute if score @s kingsandcastles.pos.y > #max.y kingsandcastles.value run scoreboard players operation #max.y kingsandcastles.value = @s kingsandcastles.pos.y
execute if score @s kingsandcastles.pos.z > #max.z kingsandcastles.value run scoreboard players operation #max.z kingsandcastles.value = @s kingsandcastles.pos.z

execute if score @s kingsandcastles.pos.x < #min.x kingsandcastles.value run scoreboard players operation #min.x kingsandcastles.value = @s kingsandcastles.pos.x
execute if score @s kingsandcastles.pos.y < #min.y kingsandcastles.value run scoreboard players operation #min.y kingsandcastles.value = @s kingsandcastles.pos.y
execute if score @s kingsandcastles.pos.z < #min.z kingsandcastles.value run scoreboard players operation #min.z kingsandcastles.value = @s kingsandcastles.pos.z