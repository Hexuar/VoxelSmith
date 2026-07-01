function voxelsmith:tick/1

scoreboard players add #tick20 voxelsmith.value 1
execute if score #tick20 voxelsmith.value matches 20.. run function voxelsmith:tick/20
execute if score #tick20 voxelsmith.value matches 20.. run scoreboard players reset #tick20 voxelsmith.value