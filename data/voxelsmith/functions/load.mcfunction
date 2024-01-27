# Scoreboards
scoreboard objectives add voxelsmith.value dummy
scoreboard objectives add voxelsmith.ingotID dummy
scoreboard objectives add voxelsmith.right_click minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add voxelsmith.pos.x dummy
scoreboard objectives add voxelsmith.pos.y dummy
scoreboard objectives add voxelsmith.pos.z dummy


# Values
scoreboard players set #-1 voxelsmith.value -1
scoreboard players set #2 voxelsmith.value 2
scoreboard players set #625 voxelsmith.value 625
scoreboard players set #16 voxelsmith.value 16
scoreboard players set #20 voxelsmith.value 20
scoreboard players set #2000 voxelsmith.value 2000
scoreboard players set #100000 voxelsmith.value 100000
scoreboard players set #256 voxelsmith.value 256
scoreboard players set #65536 voxelsmith.value 65536


# Global variables
scoreboard players set #item_cooling_speed voxelsmith.value 50
scoreboard players set #item_heating_speed voxelsmith.value 5
scoreboard players set #min_temperature voxelsmith.value 25
scoreboard players set #max_temperature voxelsmith.value 1400


# Random Color
data modify storage voxelsmith:data colorPalette set value [15921906,15527148,15395562,15132390,14737632,14474460,14079702,13750223,12698049,12171705,11645104]


# Recipe Data
execute if score #debug voxelsmith.value matches 1 run tellraw @a {"text":"[VoxelSmith] Loading Recipes..."}
data modify storage voxelsmith:smithing recipes set value []
data modify storage voxelsmith:smithing ground_recipes set value []
function #voxelsmith:load_recipes