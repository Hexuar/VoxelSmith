function voxelsmith:tick/1

scoreboard players add #tick5 voxelsmith.value 1
execute if score #tick5 voxelsmith.value matches 5.. run function voxelsmith:tick/5
execute if score #tick5 voxelsmith.value matches 5.. run scoreboard players reset #tick5 voxelsmith.value

scoreboard players add #tick20 voxelsmith.value 1
execute if score #tick20 voxelsmith.value matches 20.. run function voxelsmith:tick/20
execute if score #tick20 voxelsmith.value matches 20.. run scoreboard players reset #tick20 voxelsmith.value