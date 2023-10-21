# Scoreboards
scoreboard objectives add voxelsmith.value dummy
scoreboard objectives add voxelsmith.ingotID dummy
scoreboard objectives add voxelsmith.hammer_mode dummy
scoreboard objectives add voxelsmith.right_click minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add voxelsmith.pos.x dummy
scoreboard objectives add voxelsmith.pos.y dummy
scoreboard objectives add voxelsmith.pos.z dummy


# Values
scoreboard players set #hammer_modes voxelsmith.hammer_mode 5
scoreboard players set #-1 voxelsmith.value -1
scoreboard players set #625 voxelsmith.value 625
scoreboard players set #16 voxelsmith.value 16


# Recipe Data
execute if score #load_recipes voxelsmith.value matches 1 run function voxelsmith:load_recipes