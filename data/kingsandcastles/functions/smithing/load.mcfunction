# Scoreboards
scoreboard objectives add kingsandcastles.value dummy
scoreboard objectives add kingsandcastles.ingotID dummy
scoreboard objectives add kingsandcastles.hammer_mode dummy
scoreboard objectives add kingsandcastles.right_click minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add kingsandcastles.pos.x dummy
scoreboard objectives add kingsandcastles.pos.y dummy
scoreboard objectives add kingsandcastles.pos.z dummy


# Values
scoreboard players set #hammer_modes kingsandcastles.hammer_mode 5
scoreboard players set #-1 kingsandcastles.value -1
scoreboard players set #625 kingsandcastles.value 625


# Recipe Data
execute if score #load_recipes kingsandcastles.value matches 1 run function kingsandcastles:smithing/load_recipes