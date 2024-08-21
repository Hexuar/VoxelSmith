data modify storage voxelsmith:temperature slots set value []
data modify storage voxelsmith:temperature slots append from entity @s Inventory[{components:{"minecraft:custom_data":{voxelsmith:{has_temperature:1b}}}}].Slot

execute store result score #length voxelsmith.value run data get storage voxelsmith:temperature slots
scoreboard players set #index voxelsmith.value 0

execute store result score #current_timestamp voxelsmith.value run time query gametime

function voxelsmith:hot_item/loop