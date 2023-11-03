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
scoreboard players set #20 voxelsmith.value 20
scoreboard players set #2000 voxelsmith.value 2000
scoreboard players set #100000 voxelsmith.value 100000

# Global variables
scoreboard players set #item_cooling_speed voxelsmith.value 10
scoreboard players set #item_heating_speed voxelsmith.value 1
scoreboard players set #min_temperature voxelsmith.value 25
scoreboard players set #max_temperature voxelsmith.value 1400


# Recipe Data
data modify storage voxelsmith:smithing recipes set value []
function #voxelsmith:load_recipes