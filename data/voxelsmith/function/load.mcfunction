# Scoreboards
scoreboard objectives add voxelsmith.value dummy

# Values
scoreboard players set #20 voxelsmith.value 20

# Global variables
scoreboard players set #AMBIENT_TEMPERATURE voxelsmith.value 20

# Recipe Data
execute if score #debug voxelsmith.value matches 1 run tellraw @a {"text":"[VoxelSmith] Loading Recipes..."}
data modify storage voxelsmith:smithing recipes set value []
data modify storage voxelsmith:smithing ground_recipes set value []
function #voxelsmith:load_recipes

# Material Data
execute if score #debug voxelsmith.value matches 1 run tellraw @a {"text":"[VoxelSmith] Loading Materials..."}
data modify storage voxelsmith:smithing materials set value []
function #voxelsmith:load_materials