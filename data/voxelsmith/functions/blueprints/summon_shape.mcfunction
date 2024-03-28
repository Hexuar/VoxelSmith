advancement grant @p[distance=..4] only voxelsmith:tutorial/used_blueprint

scoreboard players set #index voxelsmith.value 0
execute store result score #length voxelsmith.value run data get entity @s Item.components.minecraft:custom_data.voxelsmith.shape

execute store result score #origin.x voxelsmith.value run data get entity @s Item.components.minecraft:custom_data.voxelsmith.origin.x 1000
execute store result score #origin.y voxelsmith.value run data get entity @s Item.components.minecraft:custom_data.voxelsmith.origin.y 1000
execute store result score #origin.z voxelsmith.value run data get entity @s Item.components.minecraft:custom_data.voxelsmith.origin.z 1000

scoreboard players operation #origin.x voxelsmith.value /= #16 voxelsmith.value
scoreboard players operation #origin.y voxelsmith.value /= #16 voxelsmith.value
scoreboard players operation #origin.z voxelsmith.value /= #16 voxelsmith.value

execute store result storage voxelsmith:data temp.x float 0.001 run scoreboard players get #origin.x voxelsmith.value
execute store result storage voxelsmith:data temp.y float 0.001 run scoreboard players get #origin.y voxelsmith.value
execute store result storage voxelsmith:data temp.z float 0.001 run scoreboard players get #origin.z voxelsmith.value

function voxelsmith:blueprints/summon_shape/set_origin with storage voxelsmith:data temp

tag @s add voxelsmith.blueprint.used