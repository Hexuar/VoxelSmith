function voxelsmith:tick/1

execute if score #tick5 voxelsmith.value matches 5 run function voxelsmith:tick/5
scoreboard players add #tick5 voxelsmith.value 1